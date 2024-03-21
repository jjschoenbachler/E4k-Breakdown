.class Lcom/adobe/air/net/AndroidNetworkInfo;
.super Ljava/lang/Object;
.source "AndroidNetworkInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidNetworkInfo"

.field private static sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterfaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/adobe/air/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    .line 52
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    return-void
.end method

.method public static GetAndroidNetworkInfo(Landroid/content/Context;)Lcom/adobe/air/net/AndroidNetworkInfo;
    .locals 1

    .line 44
    sget-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/adobe/air/net/AndroidNetworkInfo;

    invoke-direct {v0, p0}, Lcom/adobe/air/net/AndroidNetworkInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    .line 46
    :cond_0
    sget-object p0, Lcom/adobe/air/net/AndroidNetworkInfo;->sAndroidNetworkInfo:Lcom/adobe/air/net/AndroidNetworkInfo;

    return-object p0
.end method

.method private enumerateNetworkInterfaces()V
    .locals 5

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 77
    aget-object v2, v0, v1

    .line 78
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 91
    invoke-virtual {p0, v2}, Lcom/adobe/air/net/AndroidNetworkInfo;->getDefaultData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;

    move-result-object v2

    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {p0, v2}, Lcom/adobe/air/net/AndroidNetworkInfo;->getWifiData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;

    move-result-object v2

    .line 93
    :goto_1
    iget-object v3, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :catch_0
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public GetNetworkInterface(I)Lcom/adobe/air/net/NetworkInterface;
    .locals 1

    if-ltz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/air/net/NetworkInterface;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public GetNetworkInterfacesCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 58
    invoke-direct {p0}, Lcom/adobe/air/net/AndroidNetworkInfo;->enumerateNetworkInterfaces()V

    .line 59
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public InterfacesReadComplete()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mInterfaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method getAddress(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/InterfaceAddress;
    .locals 3

    .line 152
    new-instance v0, Lcom/adobe/air/net/InterfaceAddress;

    invoke-direct {v0}, Lcom/adobe/air/net/InterfaceAddress;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_1

    return-object v1

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 162
    iget p1, v2, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/adobe/air/net/InterfaceAddress;->address:Ljava/lang/String;

    .line 163
    iget p1, v2, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    iput p1, v0, Lcom/adobe/air/net/InterfaceAddress;->prefixLength:I

    .line 164
    iget p1, v2, Landroid/net/DhcpInfo;->ipAddress:I

    iget v1, v2, Landroid/net/DhcpInfo;->netmask:I

    xor-int/lit8 v1, v1, -0x1

    or-int/2addr p1, v1

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/adobe/air/net/InterfaceAddress;->broadcast:Ljava/lang/String;

    const-string p1, "IPv4"

    .line 165
    iput-object p1, v0, Lcom/adobe/air/net/InterfaceAddress;->ipVersion:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/adobe/air/net/InterfaceAddress;->address:Ljava/lang/String;

    const-string p1, "IPv4"

    .line 175
    iput-object p1, v0, Lcom/adobe/air/net/InterfaceAddress;->ipVersion:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method getDefaultData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;
    .locals 2

    .line 141
    new-instance v0, Lcom/adobe/air/net/NetworkInterface;

    invoke-direct {v0}, Lcom/adobe/air/net/NetworkInterface;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/adobe/air/net/NetworkInterface;->active:Z

    .line 143
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/air/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/adobe/air/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method getWifiData(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/NetworkInterface;
    .locals 3

    .line 111
    new-instance v0, Lcom/adobe/air/net/NetworkInterface;

    invoke-direct {v0}, Lcom/adobe/air/net/NetworkInterface;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/adobe/air/net/AndroidNetworkInfo;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 117
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    iput-boolean v2, v0, Lcom/adobe/air/net/NetworkInterface;->active:Z

    .line 124
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/air/net/NetworkInterface;->displayName:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/air/net/NetworkInterface;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 130
    :cond_0
    iput-object v1, v0, Lcom/adobe/air/net/NetworkInterface;->hardwareAddress:Ljava/lang/String;

    .line 132
    :cond_1
    invoke-virtual {p0, p1}, Lcom/adobe/air/net/AndroidNetworkInfo;->getAddress(Landroid/net/NetworkInfo;)Lcom/adobe/air/net/InterfaceAddress;

    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Lcom/adobe/air/net/NetworkInterface;->addAddress(Lcom/adobe/air/net/InterfaceAddress;)V

    return-object v0
.end method
