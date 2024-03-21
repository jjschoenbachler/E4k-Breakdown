.class public Lcom/adobe/air/wand/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# static fields
.field private static mWandConn:Lcom/adobe/air/wand/connection/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static resisterWandConnection(Lcom/adobe/air/wand/connection/Connection;)V
    .locals 0

    .line 35
    sput-object p0, Lcom/adobe/air/wand/ConnectionChangeReceiver;->mWandConn:Lcom/adobe/air/wand/connection/Connection;

    return-void
.end method

.method public static unresisterWandConnection()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/adobe/air/wand/ConnectionChangeReceiver;->mWandConn:Lcom/adobe/air/wand/connection/Connection;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 45
    sget-object p1, Lcom/adobe/air/wand/ConnectionChangeReceiver;->mWandConn:Lcom/adobe/air/wand/connection/Connection;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/adobe/air/wand/ConnectionChangeReceiver;->mWandConn:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {p1}, Lcom/adobe/air/wand/connection/Connection;->onConnectionChanged()V

    :cond_0
    return-void
.end method
