.class Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;
.super Ljava/lang/Object;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRWindowSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method private constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0

    .line 1770
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView$1;)V
    .locals 0

    .line 1770
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1774
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->onTextBoxContextMenuItem(I)Z

    move-result p1

    return p1
.end method
