.class public final Lcom/ironsource/environment/token/TokenProvider;
.super Ljava/lang/Object;
.source "TokenProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0007J\u000e\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/ironsource/environment/token/TokenProvider;",
        "",
        "()V",
        "mGlobalDataReader",
        "Lcom/ironsource/environment/globaldata/GlobalDataReader;",
        "mTokenKeyList",
        "",
        "",
        "[Ljava/lang/String;",
        "formatDataMetaData",
        "Lorg/json/JSONObject;",
        "tokenData",
        "getToken",
        "context",
        "Landroid/content/Context;",
        "environment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;

.field private final mTokenKeyList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/ironsource/environment/token/TokenKeys;->Companion:Lcom/ironsource/environment/token/TokenKeys$Companion;

    invoke-virtual {v0}, Lcom/ironsource/environment/token/TokenKeys$Companion;->getBaseKeys()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/environment/token/TokenProvider;->mTokenKeyList:[Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/ironsource/environment/globaldata/GlobalDataReader;

    invoke-direct {v0}, Lcom/ironsource/environment/globaldata/GlobalDataReader;-><init>()V

    iput-object v0, p0, Lcom/ironsource/environment/token/TokenProvider;->mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;

    return-void
.end method

.method private final formatDataMetaData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "md"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/ironsource/environment/globaldata/GlobalDataUtils;->joinJSONsStringLists(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "md"

    .line 29
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final getToken()Lorg/json/JSONObject;
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use the new method getToken(context: Context)"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/ironsource/environment/token/TokenProvider;->mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;

    iget-object v1, p0, Lcom/ironsource/environment/token/TokenProvider;->mTokenKeyList:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataReader;->getDataByKeys([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mGlobalDataReader.getDataByKeys(mTokenKeyList)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/environment/token/TokenProvider;->formatDataMetaData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final getToken(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/ironsource/environment/token/TokenProvider;->mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;

    iget-object v1, p0, Lcom/ironsource/environment/token/TokenProvider;->mTokenKeyList:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/environment/globaldata/GlobalDataReader;->getDataByKeys(Landroid/content/Context;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "mGlobalDataReader.getDat\u2026s(context, mTokenKeyList)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/ironsource/environment/token/TokenProvider;->formatDataMetaData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
