.class Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
.super Lorg/java_websocket/server/WebSocketServer;
.source "WandWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/connection/WandWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WandSocketServer"
.end annotation


# instance fields
.field private mHasStartedServer:Z

.field final synthetic this$0:Lcom/adobe/air/wand/connection/WandWebSocket;


# direct methods
.method public constructor <init>(Lcom/adobe/air/wand/connection/WandWebSocket;Ljava/net/InetSocketAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    .line 243
    invoke-direct {p0, p2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;)V

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    return-void
.end method

.method private scheduleHandshakeTimer()V
    .locals 4

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$600(Lcom/adobe/air/wand/connection/WandWebSocket;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer$1;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 0

    const-string p2, "OPEN_SYNCHRONIZER"

    .line 351
    monitor-enter p2

    .line 353
    :try_start_0
    iget-object p3, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object p3

    if-ne p3, p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;

    const-string p1, "HANDSHAKE_SYNCHRONIZER"

    .line 357
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    :try_start_1
    iget-object p4, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p4}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 361
    iget-object p4, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p4, p3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    .line 362
    iget-object p3, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object p3

    invoke-interface {p3}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectionClose()V

    .line 364
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p3

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p3

    .line 368
    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 1

    .line 432
    iget-object p2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 433
    iget-object p2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object p2

    if-eq p2, p1, :cond_1

    if-eqz p1, :cond_0

    const/16 p2, 0x3eb

    :try_start_0
    const-string v0, "AIR Gamepad is already connected"

    .line 439
    invoke-interface {p1, p2, v0}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 5

    const-string v0, "OPEN_SYNCHRONIZER"

    .line 374
    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v1

    if-eq p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "HANDSHAKE_SYNCHRONIZER"

    .line 378
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 379
    :try_start_1
    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string p1, "NO_OP"

    .line 381
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 383
    :cond_1
    :try_start_3
    iget-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/adobe/air/wand/connection/Connection$Listener;->onReceive(Ljava/lang/String;)V

    .line 384
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :cond_3
    :try_start_5
    const-string v2, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x0

    .line 394
    :try_start_6
    invoke-static {p2}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->parse(Ljava/lang/String;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 401
    :try_start_7
    iget-object v4, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v4, p2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$800(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V

    goto :goto_0

    .line 398
    :catch_0
    new-instance p2, Ljava/lang/Exception;

    const-string v2, "Unable to parse the handshake"

    invoke-direct {p2, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    move-exception p2

    .line 406
    :try_start_8
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object p2, v3

    :goto_0
    if-nez p2, :cond_4

    const/16 p2, 0x3eb

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid AIR Gamepad handshake : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    .line 413
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    .line 416
    :cond_4
    :try_start_a
    iget-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p1, p2}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 419
    :try_start_b
    iget-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectionOpen(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 423
    :catch_2
    :try_start_c
    iget-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {p1, v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    .line 426
    :cond_5
    :goto_1
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 427
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 426
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw p1

    :catchall_1
    move-exception p1

    .line 427
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw p1
.end method

.method public onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    .locals 1

    const-string p2, "OPEN_SYNCHRONIZER"

    .line 298
    monitor-enter p2

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$400(Lcom/adobe/air/wand/connection/WandWebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;

    .line 304
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->scheduleHandshakeTimer()V

    .line 308
    monitor-exit p2

    return-void

    .line 310
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x3eb

    const-string v0, "AIR Gamepad is already connected"

    .line 313
    invoke-interface {p1, p2, v0}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 310
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-super {p0}, Lorg/java_websocket/server/WebSocketServer;->start()V

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 261
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    :try_start_0
    invoke-super {p0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->mHasStartedServer:Z

    .line 276
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$000(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$200(Lcom/adobe/air/wand/connection/WandWebSocket;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$002(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->access$300(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
