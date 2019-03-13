abstract class FolderId {}

class WellKnownFolderId extends FolderId {
  final String name;

  WellKnownFolderId(this.name);
}

class SpecificFolderId extends FolderId {
  final String id;
  final String name;

  SpecificFolderId(this.id, this.name);
}
