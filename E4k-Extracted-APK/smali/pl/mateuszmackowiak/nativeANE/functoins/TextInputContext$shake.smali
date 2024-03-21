.class public Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$shake;
.super Ljava/lang/Object;
.source "TextInputContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "shake"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "shake"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$shake;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 79
    :try_start_0
    iget-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$shake;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-static {p1}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/high16 p2, 0x40a00000    # 5.0f

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 82
    new-instance v0, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v0, p2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x12c

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$shake;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
