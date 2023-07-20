abstract class CrewRepository<Crew> {
  Future<List<Crew>> getAll();
  Future<Crew?> getById(String indetifier);
}
