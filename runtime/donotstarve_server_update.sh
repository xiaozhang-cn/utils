ssh root@10.1.2.84 'cd /usr/local/zhang/software/games/dontstarve/mount/DoNotStarveTogether/; tar -czvf back_up_2024-03-29_17-30-14.tar.gz Cluster_1/'
scp -r "/Users/xiaozhang/workspace/java/utils/support/src/main/resources/dontstarve/mods" root@10.1.2.84:"/usr/local/zhang/software/games/dontstarve/mount/Steam/steamapps/common/Don\'t\ Starve\ Together\ Dedicated\ Server/mods"
scp -r "/Users/xiaozhang/workspace/java/utils/support/target/classes/dontstarve/Cluster_1/Master/modoverrides.lua" root@10.1.2.84:/usr/local/zhang/software/games/dontstarve/mount/DoNotStarveTogether/Cluster_1/Master
scp -r "/Users/xiaozhang/workspace/java/utils/support/target/classes/dontstarve/Cluster_1/Master/leveldataoverride.lua" root@10.1.2.84:/usr/local/zhang/software/games/dontstarve/mount/DoNotStarveTogether/Cluster_1/Master
scp -r "/Users/xiaozhang/workspace/java/utils/support/target/classes/dontstarve/Cluster_1/Caves/modoverrides.lua" root@10.1.2.84:/usr/local/zhang/software/games/dontstarve/mount/DoNotStarveTogether/Cluster_1/Caves
scp -r "/Users/xiaozhang/workspace/java/utils/support/target/classes/dontstarve/Cluster_1/Caves/leveldataoverride.lua" root@10.1.2.84:/usr/local/zhang/software/games/dontstarve/mount/DoNotStarveTogether/Cluster_1/Caves
