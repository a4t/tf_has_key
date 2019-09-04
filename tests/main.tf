module has_key_1 {
  source = "../"

  map = {
    a = "a"
    b = "b"
    c = "c"
  }
  value = "a"
}

module has_key_2 {
  source = "../"

  map = {
    a = "a"
    b = "b"
    c = "c"
  }
  value = "d"
}

output test_has_key_1 {
  value = module.has_key_1.bool == true ? "ok" : "failures"
}

output test_has_key_2 {
  value = module.has_key_2.bool == false ? "ok" : "failures"
}
