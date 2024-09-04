ZSHHOME="${HOME}/.zsh.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
  # evalは最後に実行する
  eval_file=""
    for i in $ZSHHOME/*; do
      if [[ ${i##*/} = "eval.zsh" ]]; then
        eval_file=$i
      else
        [[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
      fi
    done

    if [ -n "$eval_file" ]; then
      . $eval_file
    fi
fi
