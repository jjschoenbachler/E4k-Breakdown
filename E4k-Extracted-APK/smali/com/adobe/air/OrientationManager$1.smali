.class Lcom/adobe/air/OrientationManager$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/OrientationManager;->onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/OrientationManager;


# direct methods
.method constructor <init>(Lcom/adobe/air/OrientationManager;Landroid/content/Context;I)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 248
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x87

    const/16 v2, 0x2d

    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 253
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v3, 0xe1

    if-lt p1, v1, :cond_3

    if-ge p1, v3, :cond_3

    .line 257
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 258
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x13b

    if-lt p1, v3, :cond_4

    if-ge p1, v1, :cond_4

    .line 262
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 263
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_4
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_6

    :cond_5
    if-lt p1, v1, :cond_7

    const/16 v1, 0x168

    if-ge p1, v1, :cond_7

    .line 267
    :cond_6
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$102(Lcom/adobe/air/OrientationManager;I)I

    .line 268
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 271
    :cond_7
    :goto_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    .line 272
    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-ne p1, v2, :cond_a

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    iget-object v3, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v3}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)I

    move-result v3

    if-eq p1, v3, :cond_a

    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    .line 273
    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result p1

    if-eq v0, p1, :cond_a

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    if-eq p1, v0, :cond_a

    .line 275
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "accelerometer_rotation"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 277
    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    .line 279
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$500(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 282
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanging(II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 285
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    goto :goto_1

    .line 289
    :cond_8
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$600(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 292
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v1}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 293
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$402(Lcom/adobe/air/OrientationManager;I)I

    .line 297
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$400(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$702(Lcom/adobe/air/OrientationManager;I)I

    goto :goto_2

    .line 301
    :cond_a
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$200(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-ne p1, v2, :cond_c

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$800(Lcom/adobe/air/OrientationManager;)Z

    move-result p1

    if-ne p1, v2, :cond_c

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    .line 302
    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$300(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)I

    move-result p1

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$900(Lcom/adobe/air/OrientationManager;)F

    move-result p1

    const v0, 0x40533333    # 3.3f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_c

    .line 304
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 305
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1}, Lcom/adobe/air/OrientationManager;->access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 306
    :cond_b
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {p1, v1}, Lcom/adobe/air/OrientationManager;->access$802(Lcom/adobe/air/OrientationManager;Z)Z

    .line 309
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    iget-object v0, p0, Lcom/adobe/air/OrientationManager$1;->this$0:Lcom/adobe/air/OrientationManager;

    invoke-static {v0}, Lcom/adobe/air/OrientationManager;->access$100(Lcom/adobe/air/OrientationManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/air/OrientationManager;->access$302(Lcom/adobe/air/OrientationManager;I)I

    return-void
.end method
