.class public final Lcom/facebook/ads/redexgen/X/1i;
.super Lcom/facebook/ads/redexgen/X/A3;
.source ""


# static fields
.field public static final A00:I

.field public static final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 4711
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    .line 4712
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/1i;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 1

    .line 4713
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/A3;-><init>(Lcom/facebook/ads/redexgen/X/Oj;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/SB;)V

    .line 4714
    return-void
.end method


# virtual methods
.method public final A01()Z
    .locals 1

    .line 4715
    const/4 v0, 0x0

    return v0
.end method

.method public final A0j(Lcom/facebook/ads/redexgen/X/Xy;)V
    .locals 7

    .line 4716
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/Oc;

    move-result-object v4

    .line 4717
    .local p0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/Oc;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/Oc;->setAlignment(I)V

    .line 4718
    const/4 v5, -0x2

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4719
    .local v4, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Oc;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4720
    sget v1, Lcom/facebook/ads/redexgen/X/1i;->A00:I

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/Oc;->setPadding(IIII)V

    .line 4721
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4722
    .local v3, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getCtaButton()Lcom/facebook/ads/redexgen/X/T1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/T1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4723
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4724
    .local v0, "adDetails":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/MS;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 4725
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4726
    .local v6, "adDetailsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/A3;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4727
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4728
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4729
    sget v0, Lcom/facebook/ads/redexgen/X/1i;->A01:I

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4730
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4731
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getCtaButton()Lcom/facebook/ads/redexgen/X/T1;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4732
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/A3;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1i;->addView(Landroid/view/View;)V

    .line 4733
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/1i;->addView(Landroid/view/View;)V

    .line 4734
    return-void
.end method
