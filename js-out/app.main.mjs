
import * as $clt from "./calcit.core.mjs";
const _t_ = $clt.init_tags([]);

export function run_task_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('run-task!', 0, arguments.length);
  console.log($clt.printable((function _fn_(){
    let tmp_AUTO_1 = (function _fn_(){
      let tmp_AUTO_2 = function f_PCT_(word) {
        if (arguments.length !== 1) throw $clt._args_throw('f%', 1, arguments.length);

        if ($clt._$n__LT_($clt._$n_str_$o_count(word), 7)) { let i_pos = $clt._$n_str_$o_find_index(word, "i");
        let p_pos = $clt._$n_str_$o_find_index(word, "p");
        let c_pos = $clt._$n_str_$o_find_index(word, "c");
        return $clt._LT__$e_(0, i_pos, p_pos, c_pos)


         } else { return false }
      }
      ;
      return $clt._$n_list_$o_filter($clt.deref(_$s_words), tmp_AUTO_2);
    })();
    return $clt.join_str(tmp_AUTO_1, "\n");
  })()))
}

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  {
    console.log($clt.printable("Started."));
  }
  return run_task_$x_()
}

export function reload_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('reload!', 0, arguments.length);
  {
    console.log($clt.printable("Reloaded."));
  }
  return run_task_$x_()
}



export var _$s_words = 
($clt.peekDefatom("app.main/*words") ?? $clt.defatom("app.main/*words", $clt.split_lines($clt.trim($clt.read_file("./target/words_alpha.txt")))))
;

