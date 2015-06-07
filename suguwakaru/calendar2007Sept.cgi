#! /usr/local/bin/perl -w
#
# calendar2007Sept.cgi -- カレンダーの生成（2007 年 9 月）
#
# sample file name: calendar2007Sept.cgi

use CGI;
$q = new CGI;                        # create new CGI object
print $q->header(-charset=>'EUC-JP'),  # create the HTTP header
  $q->start_html(
      -title =>'カレンダー：2007年 9 月',
          -lang  =>'ja-JP',
              -charset => 'EUC-JP'),
                $q->table($q->Tr([
                     $q->th(['日', '月', '火', '水', '木', '金', '土', ]),
                          $q->td(['&nbsp;&nbsp;', '&nbsp;&nbsp;', '&nbsp;&nbsp;', 
                                 '&nbsp;&nbsp;', '&nbsp;&nbsp;', '&nbsp;&nbsp;', '&nbsp;1', ]),
                                      $q->td(['&nbsp;2', '&nbsp;3', '&nbsp;4', 
                                             '&nbsp;5', '&nbsp;6', '&nbsp;7', '&nbsp;8', ]),
                                                  $q->td(['&nbsp;9', '10', '11', '12', '13', '14', '15', ]),
                                                       $q->td(['16', '17', '18', '19', '20', '21', '22', ]),
                                                            $q->td(['23', '24', '25', '26', '27', '28', '29', ]),
                                                                 $q->td(['30', '&nbsp;&nbsp;', '&nbsp;&nbsp;', 
                                                                        '&nbsp;&nbsp;', '&nbsp;&nbsp;', '&nbsp;&nbsp;', '&nbsp;&nbsp;', ]),
                                                                                  ])),                                                                       $q->end_html;
