.class public Lcom/adobe/air/wand/connection/WandWebSocket;
.super Ljava/lang/Object;
.source "WandWebSocket.java"

# interfaces
.implements Lcom/adobe/air/wand/connection/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;,
        Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;,
        Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    }
.end annotation


# static fields
.field private static final CONNECT_PING_URL:Ljava/lang/String; = "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt"

.field private static final LOG_TAG:Ljava/lang/String; = "WandWebSocket"

.field private static final WEBSOCKET_PROTOCOL:Ljava/lang/String; = "WEBSOCKET"


# instance fields
.field private final HANDSHAKE_SYNCHRONIZER:Ljava/lang/String;

.field private final OPEN_SYNCHRONIZER:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAllowIncomingConnection:Z

.field private mConnection:Lorg/java_websocket/WebSocket;

.field private mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

.field private mConnectionToken:Ljava/lang/String;

.field private mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

.field private mHandshakeTimer:Ljava/util/Timer;

.field private mIsDisposed:Z

.field private mLocalID:Ljava/lang/String;

.field private mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OPEN_SYNCHRONIZER"

    .line 217
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->OPEN_SYNCHRONIZER:Ljava/lang/String;

    const-string v0, "HANDSHAKE_SYNCHRONIZER"

    .line 218
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->HANDSHAKE_SYNCHRONIZER:Ljava/lang/String;

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    .line 221
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    const/4 v1, 0x0

    .line 222
    iput-boolean v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    .line 223
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    .line 226
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    .line 227
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    .line 229
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 230
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    .line 232
    iput-boolean v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    .line 456
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    .line 458
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;)Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/connection/WandWebSocket;)Lorg/java_websocket/WebSocket;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    return-object p0
.end method

.method static synthetic access$102(Lcom/adobe/air/wand/connection/WandWebSocket;Lorg/java_websocket/WebSocket;)Lorg/java_websocket/WebSocket;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->forceCloseConnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->startSocketServer()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/air/wand/connection/WandWebSocket;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    return p0
.end method

.method static synthetic access$500(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    return-object p0
.end method

.method static synthetic access$502(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    return-object p1
.end method

.method static synthetic access$600(Lcom/adobe/air/wand/connection/WandWebSocket;)Ljava/util/Timer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/adobe/air/wand/connection/WandWebSocket;)Lcom/adobe/air/wand/connection/Connection$Listener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket;->validateHandshake(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V

    return-void
.end method

.method private constructLocalID()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 489
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 494
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x3

    .line 495
    aget-byte v1, v0, v1

    invoke-direct {p0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    mul-long v1, v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    .line 496
    invoke-direct {p0, v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x100

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    .line 497
    invoke-direct {p0, v3}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x10000

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    .line 498
    invoke-direct {p0, v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getUnsignedByte(B)I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x1000000

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    const/16 v0, 0x20

    .line 499
    invoke-static {v1, v2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private forceCloseConnection()V
    .locals 6

    .line 530
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    .line 531
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    const-string v3, "AIR Gamepad has closed"

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V

    const-string v1, "AIR Gamepad has closed"

    .line 532
    invoke-interface {v0, v4, v1}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    return-void
.end method

.method private getLocalIpAddress()Ljava/net/InetAddress;
    .locals 1

    .line 755
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getWiFiIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getWiFiHotspotIpAddress()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPreferredPort()I
    .locals 1

    const/16 v0, 0x4d2

    return v0
.end method

.method private getUnsignedByte(B)I
    .locals 0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p1, p1, 0x100

    :goto_0
    return p1
.end method

.method private getWiFiHotspotIpAddress()Ljava/net/InetAddress;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    return-object v1

    .line 641
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 646
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_3

    aget-object v8, v2, v5

    .line 647
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isWifiApEnabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 650
    :try_start_0
    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    :catch_0
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    return-object v1

    .line 676
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    .line 678
    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    .line 682
    new-array v3, v2, [B

    const-string v5, ":"

    .line 685
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    const/16 v8, 0x10

    if-ne v5, v6, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_6

    const/4 v5, 0x0

    .line 687
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_7

    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v9, v6, 0x2

    .line 689
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const-string v5, ":"

    .line 694
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 696
    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_7

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 698
    aget-object v6, v0, v5

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 705
    :cond_7
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 707
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 709
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 710
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 711
    invoke-virtual {v8}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_9

    .line 712
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 718
    :try_start_1
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v9
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_9

    .line 723
    array-length v10, v9

    if-eq v10, v2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    .line 727
    :goto_4
    array-length v11, v9

    if-ge v10, v11, :cond_c

    .line 729
    aget-byte v11, v9, v10

    aget-byte v12, v3, v10

    if-eq v11, v12, :cond_b

    const/4 v9, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_9

    return-object v8

    :catch_1
    nop

    goto :goto_3

    :cond_d
    return-object v1
.end method

.method private getWiFiIpAddress()Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 616
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 619
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string v1, "%d.%d.%d.%d"

    const/4 v2, 0x4

    .line 623
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    .line 625
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 626
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 627
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 628
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 623
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private pingServerOnConnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 883
    :cond_0
    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;

    invoke-direct {v1, p0, v0}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$1;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt?publisher="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&applicationURL="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "UTF-8"

    .line 884
    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 883
    invoke-virtual {v1, v0}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 879
    :cond_1
    :goto_0
    new-instance p1, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;

    invoke-direct {p1, p0, v0}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$1;)V

    const-string p2, "http://dh8vjmvwgc27o.cloudfront.net/AIRGamepad/connect_ping.txt"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method

.method private startSocketServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getPreferredPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 466
    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    invoke-direct {v1, p0, v0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;Ljava/net/InetSocketAddress;)V

    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 467
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;->start()V

    :cond_0
    return-void
.end method

.method private stopSocketServer()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    const/4 v1, 0x0

    .line 474
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    if-eqz v0, :cond_0

    .line 478
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/server/WebSocketServer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private validateHandshake(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 785
    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d+\\.\\d+\\.\\d+"

    .line 787
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1.1.0"

    .line 790
    invoke-static {v0, v1}, Lcom/adobe/air/wand/Version;->isGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "1.0.0"

    .line 791
    invoke-static {v0, v1}, Lcom/adobe/air/wand/Version;->isGreaterThanEqualTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "WEBSOCKET"

    .line 793
    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 795
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getDestinationID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1.1.0"

    .line 797
    invoke-static {v0, v1}, Lcom/adobe/air/wand/Version;->isGreaterThanEqualTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getPublisher()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {p1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getApplicationURL()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 806
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid applicationURL"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 803
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid applicationURL"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 799
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid publisher"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 795
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid destinationID"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 793
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid protocol"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 791
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unsupported version"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 787
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid version format"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 783
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Handshake is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 505
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-nez v0, :cond_4

    .line 507
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    .line 515
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    if-nez v0, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->startSocketServer()V

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->constructLocalID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->getConnectionToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/connection/Connection$Listener;->updateConnectionToken(Ljava/lang/String;)V

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection$Listener;->onConnectSuccess()V

    :cond_2
    return-void

    .line 509
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is already established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 538
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-nez v0, :cond_3

    .line 540
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->forceCloseConnection()V

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->stopSocketServer()V

    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    .line 555
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection$Listener;->onDisconnectSuccess()V

    :cond_1
    return-void

    .line 542
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is not established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 907
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 909
    iput-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    .line 911
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->disconnect()V

    .line 913
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->unregisterListener()V

    .line 915
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    const/16 v1, 0x3e9

    const-string v2, "AIR Gamepad has closed"

    invoke-interface {v0, v1, v2}, Lorg/java_websocket/WebSocket;->close(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 919
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    .line 920
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    .line 922
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 924
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 925
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 927
    :cond_3
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshakeTimer:Ljava/util/Timer;

    .line 929
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mWandSocketServer:Lcom/adobe/air/wand/connection/WandWebSocket$WandSocketServer;

    .line 930
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public getConnectionToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-nez v0, :cond_2

    .line 564
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionToken:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection is not established"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Connection has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConnectionChanged()V
    .locals 2

    .line 818
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 822
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mAllowIncomingConnection:Z

    if-nez v0, :cond_1

    return-void

    .line 825
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->constructLocalID()Ljava/lang/String;

    move-result-object v0

    .line 827
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    return-void

    .line 832
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 837
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->disconnect()V

    .line 838
    invoke-virtual {p0}, Lcom/adobe/air/wand/connection/WandWebSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public onReadyForConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mLocalID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->getSuccessResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    invoke-static {v0}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->access$1000(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mHandshake:Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    invoke-static {v1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->access$1100(Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/wand/connection/WandWebSocket;->pingServerOnConnect(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 893
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid state at onReadyForConnection callback."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lcom/adobe/air/wand/connection/Connection$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 575
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    if-nez v0, :cond_0

    .line 585
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    return-void

    .line 582
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "A listener is already registered"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid Connection.Listener"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 575
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Connection has been disposed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    iget-boolean v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mIsDisposed:Z

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    if-eqz v0, :cond_0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnection:Lorg/java_websocket/WebSocket;

    invoke-interface {v0, p1}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unable to send Message"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Connection has been disposed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 591
    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket;->mConnectionListener:Lcom/adobe/air/wand/connection/Connection$Listener;

    return-void
.end method
