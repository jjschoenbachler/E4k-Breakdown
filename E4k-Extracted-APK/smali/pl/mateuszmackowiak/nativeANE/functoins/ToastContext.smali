.class public Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext;
.super Lcom/adobe/fre/FREContext;
.source "ToastContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext$showToast;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "ToastContext"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "ToastContext"

    const-string v1, "Disposing Extension Context"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v0, "ToastContext"

    const-string v1, "Registering Extension Functions"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Toast"

    .line 32
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext$showToast;

    invoke-direct {v2, p0}, Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext$showToast;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ToastContext;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
