.class public Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;
.super Landroid/widget/ScrollView;
.source "AndroidStageText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidStageTextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 181
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 187
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 192
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 227
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 228
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 229
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v3}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v4}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v5}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 231
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 236
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 210
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 212
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 214
    invoke-static {v0, p1}, Lcom/adobe/air/AndroidStageText;->access$002(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 215
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/adobe/air/AndroidStageText;->access$200(Lcom/adobe/air/AndroidStageText;J)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    return-void
.end method
