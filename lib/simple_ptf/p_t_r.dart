import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefresh1 extends StatefulWidget {
  @override
  _PullToRefresh1State createState() => _PullToRefresh1State();
}
class _PullToRefresh1State extends State<PullToRefresh1> {
  List<String> items=['a','b','c','d','e','f','g','h','i','j','k','l','m','n'];
  RefreshController _refreshController=RefreshController(initialRefresh: false);

  void _onRefresh() async{

    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }
  void _onReloading() async{

    await Future.delayed(Duration(milliseconds: 1000));
    items.add((items.length+1).toString());
    if(mounted){
      setState(() {

      });
      _refreshController.loadComplete();
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        enablePullUp: true,
        enablePullDown: true,
        header: WaterDropHeader(),
        footer: CustomFooter(
          builder: (BuildContext context,LoadStatus mode){
            Widget body;   
            if(mode==LoadStatus.idle){
              body=Text("Pull up load");           
            }
            else if(mode==LoadStatus.loading){
              body=CupertinoActivityIndicator();
            }
            else if(mode==LoadStatus.failed){
              body=Text("Load failed ..! Click retry");
            }
            else if(mode==LoadStatus.canLoading){
              body=Text("Relese to load more..!");
            }
            else{
              body=Text("No more data ..!");
            }
            return Container(
              height: 55.0,
              child: Center(child: body,),
            );
          },
        ),
        controller: _refreshController,
        onLoading: _onReloading,
        onRefresh: _onRefresh,
        child: ListView.builder(
            itemBuilder: (c,i)=>Card(
              child: Center(
                child: Text(items[i]),
              ),
            ),
          itemCount: items.length,
          itemExtent: 100.0,
        ),


      ),
    );
  }
}
