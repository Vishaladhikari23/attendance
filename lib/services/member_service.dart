import '../models/member.dart';

class MemberService {
  // Function to fetch members
  Future<List<Member>> getMembers() async {
    // Implementation for fetching member data
    return [
      Member(id: '1', name: 'Member 1'),
      Member(id: '2', name: 'Member 2'),
    ];
  }
}
