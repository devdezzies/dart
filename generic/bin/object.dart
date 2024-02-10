class Repository {
  String? repo;
  String? owner;
  int? id;

  Repository({String? repo, String? owner, this.id}) {
    this.repo = 'This is the repo $repo';
    this.owner = 'The owner is $owner';
  }

  String? getRepoName() => repo;

  Repository getRepositoryById({String? repo, String? owner, int? id}) {
    return Repository(
      repo: repo ?? this.repo,
      owner: owner ?? this.owner,
      id: id ?? this.id
    );
  }
}

void main(){
  String name = 'John';
  print(name.runtimeType);

  Repository repository = Repository(
    repo: 'John creates a repo',
    owner: 'johnwick',
    id: 1080
  );
  print(repository.id); // Repository is the data type of this object

  print(repository.getRepositoryById(
    repo: 'Johny'
  ).id);
  
}