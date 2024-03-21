.class final Lcom/ironsource/environment/PackagesInstallationService$1;
.super Ljava/util/ArrayList;
.source "PackagesInstallationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/PackagesInstallationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.google.market"

    .line 25
    invoke-virtual {p0, v0}, Lcom/ironsource/environment/PackagesInstallationService$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.vending"

    .line 26
    invoke-virtual {p0, v0}, Lcom/ironsource/environment/PackagesInstallationService$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
