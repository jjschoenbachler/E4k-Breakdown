.class public Lcom/myflashlabs/richwebview/MyContext;
.super Lcom/adobe/fre/FREContext;
.source "MyContext.java"


# instance fields
.field private functionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/myflashlabs/richwebview/MyContext;->functionMap:Ljava/util/HashMap;

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/myflashlabs/richwebview/MyContext;->functionMap:Ljava/util/HashMap;

    .line 23
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyContext;->functionMap:Ljava/util/HashMap;

    const-string v1, "command"

    new-instance v2, Lcom/myflashlabs/richwebview/AirCommand;

    invoke-direct {v2}, Lcom/myflashlabs/richwebview/AirCommand;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MyContext;->functionMap:Ljava/util/HashMap;

    return-object v0
.end method
