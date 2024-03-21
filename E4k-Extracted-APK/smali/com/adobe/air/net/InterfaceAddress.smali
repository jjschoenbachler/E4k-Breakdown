.class public Lcom/adobe/air/net/InterfaceAddress;
.super Ljava/lang/Object;
.source "InterfaceAddress.java"


# instance fields
.field public address:Ljava/lang/String;

.field public broadcast:Ljava/lang/String;

.field public ipVersion:Ljava/lang/String;

.field public prefixLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/adobe/air/net/InterfaceAddress;->address:Ljava/lang/String;

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/adobe/air/net/InterfaceAddress;->broadcast:Ljava/lang/String;

    const-string v0, "IPv4"

    .line 12
    iput-object v0, p0, Lcom/adobe/air/net/InterfaceAddress;->ipVersion:Ljava/lang/String;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/adobe/air/net/InterfaceAddress;->prefixLength:I

    return-void
.end method
