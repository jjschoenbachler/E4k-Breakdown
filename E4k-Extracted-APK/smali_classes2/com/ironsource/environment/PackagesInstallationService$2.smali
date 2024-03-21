.class final Lcom/ironsource/environment/PackagesInstallationService$2;
.super Lorg/json/JSONObject;
.source "PackagesInstallationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/environment/PackagesInstallationService;->buildAppPackageInstallationObject(Z)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isInstalled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 92
    iput-boolean p1, p0, Lcom/ironsource/environment/PackagesInstallationService$2;->val$isInstalled:Z

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "isInstalled"

    .line 93
    iget-boolean v0, p0, Lcom/ironsource/environment/PackagesInstallationService$2;->val$isInstalled:Z

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/environment/PackagesInstallationService$2;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method
