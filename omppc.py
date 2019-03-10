"""
omppc binding
"""
import subprocess

from common.log import logUtils as log
from helpers import mapsHelper


class OmppcError(Exception):
	pass


class Omppc:
	__slots__ = ["beatmap", "score", "pp"]

	def __init__(self, beatmap_, score_):
		self.beatmap = beatmap_
		self.score = score_
		self.pp = 0
		self.getPP()

	def _runProcess(self):
		# Run with dotnet
		command = \
			"luajit ../omppc/omppc.lua " \
			"-b {map} " \
			"-s {score_.score} " \
			"-m {score_.mods}".format(
				map=self.mapPath,
				score_=self.score
			)
		log.debug("omppc ~> running {}".format(command))
		process = subprocess.run(command, shell=True, stdout=subprocess.PIPE)

		# Get pp from output
		output = process.stdout.decode("utf-8", errors="ignore")
		log.debug("omppc ~> output: {}".format(output))
		pp = 0
		try:
			pp = float(output)
		except ValueError:
			raise OmppcError("Invalid 'pp' value (got '{}', expected a float)".format(output))
		
		log.debug("omppc ~> returned pp: {}".format(pp))
		return pp

	def getPP(self):
		try:
			# Reset pp
			self.pp = 0

			# Cache map
			mapsHelper.cacheMap(self.mapPath, self.beatmap)

			# Calculate pp
			self.pp = self._runProcess()
		except OmppcError:
			log.warning("Invalid beatmap {}".format(self.beatmap.beatmapID))
			self.pp = 0
		finally:
			return self.pp

	@property
	def mapPath(self):
		return mapsHelper.cachedMapPath(self.beatmap.beatmapID)
