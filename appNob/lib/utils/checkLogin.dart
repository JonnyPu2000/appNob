checkLogin(json) {
  if (json.substring(24, 28) == "null") {
    var list = [json, 0];
    return list;
  } else {
    var list = [json, 1];
    return list;
  }
}
