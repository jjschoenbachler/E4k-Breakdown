.class public Lcom/myflashlab/dependency/overrideAir/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    sget p1, Lcom/myflashlab/dependency/overrideAir/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lcom/myflashlab/dependency/overrideAir/MainActivity;->setContentView(I)V

    return-void
.end method
