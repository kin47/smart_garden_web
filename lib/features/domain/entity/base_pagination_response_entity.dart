class BasePaginationResponseEntity<T> {
  final List<T> data;
  final int totalPages;
  final int totalData;

  BasePaginationResponseEntity({
    required this.data,
    required this.totalPages,
    required this.totalData,
  });
}