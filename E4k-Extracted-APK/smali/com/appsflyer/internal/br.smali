.class public final Lcom/appsflyer/internal/br;
.super Lcom/appsflyer/internal/bn;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "huawei"

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/bn;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Landroid/content/Context;)V
    .locals 4

    .line 33
    new-instance v0, Lcom/appsflyer/internal/br$1;

    const-string v1, "com.huawei.appmarket.commondata"

    const-string v2, "FFE391E0EA186D0734ED601E4E70E3224B7309D48E2075BAC46D8C667EAE7212"

    const-string v3, "3BAF59A2E5331C30675FAB35FF5FFF0D116142D3D4664F1C3CB804068B40614F"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/appsflyer/internal/br$1;-><init>(Lcom/appsflyer/internal/br;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/appsflyer/internal/br;->values(Landroid/content/Context;Lcom/appsflyer/internal/av;)V

    return-void
.end method
