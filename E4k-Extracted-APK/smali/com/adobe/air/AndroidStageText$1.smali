.class Lcom/adobe/air/AndroidStageText$1;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 704
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/adobe/air/AndroidStageText;->access$1402(Lcom/adobe/air/AndroidStageText;Z)Z

    const/4 p1, 0x0

    const/16 v0, 0x42

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 729
    :pswitch_1
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-static {p2, v1, v2, p1, v0}, Lcom/adobe/air/AndroidStageText;->access$1500(Lcom/adobe/air/AndroidStageText;JII)Z

    .line 731
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-static {p2, v1, v2, p3, v0}, Lcom/adobe/air/AndroidStageText;->access$1500(Lcom/adobe/air/AndroidStageText;JII)Z

    .line 735
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {p2}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    goto :goto_0

    .line 710
    :pswitch_2
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-static {p2, v1, v2, p1, v0}, Lcom/adobe/air/AndroidStageText;->access$1500(Lcom/adobe/air/AndroidStageText;JII)Z

    move-result p1

    .line 712
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-static {p2, v1, v2, p3, v0}, Lcom/adobe/air/AndroidStageText;->access$1500(Lcom/adobe/air/AndroidStageText;JII)Z

    return p1

    .line 720
    :pswitch_3
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-static {p2, v1, v2, p1, v0}, Lcom/adobe/air/AndroidStageText;->access$1500(Lcom/adobe/air/AndroidStageText;JII)Z

    move-result p1

    .line 722
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$1;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-static {p2, v1, v2, p3, v0}, Lcom/adobe/air/AndroidStageText;->access$1500(Lcom/adobe/air/AndroidStageText;JII)Z

    return p1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
