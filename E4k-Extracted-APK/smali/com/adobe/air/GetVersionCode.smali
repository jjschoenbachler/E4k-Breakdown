.class public Lcom/adobe/air/GetVersionCode;
.super Ljava/lang/Object;
.source "GetVersionCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "33.1.1.575"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
