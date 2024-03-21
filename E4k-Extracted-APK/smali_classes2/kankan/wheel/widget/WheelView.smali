.class public Lkankan/wheel/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomCenterLine:Landroid/graphics/drawable/Drawable;

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkankan/wheel/widget/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkankan/wheel/widget/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private recycle:Lkankan/wheel/widget/WheelRecycle;

.field private scroller:Lkankan/wheel/widget/WheelScroller;

.field scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkankan/wheel/widget/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private selectionLineColor:I

.field private showOverline:Z

.field private showShadows:Z

.field private topCenterLine:Landroid/graphics/drawable/Drawable;

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 128
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v1, 0x5

    .line 64
    iput v1, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 67
    iput v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lkankan/wheel/widget/WheelView;->showOverline:Z

    .line 81
    iput-boolean v1, p0, Lkankan/wheel/widget/WheelView;->showShadows:Z

    const/4 v1, -0x1

    .line 87
    iput v1, p0, Lkankan/wheel/widget/WheelView;->selectionLineColor:I

    .line 89
    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    .line 101
    new-instance v0, Lkankan/wheel/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelRecycle;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 169
    new-instance v0, Lkankan/wheel/widget/WheelView$1;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelView$1;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    .line 242
    new-instance v0, Lkankan/wheel/widget/WheelView$2;

    invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelView$2;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 129
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v0, 0x5

    .line 64
    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 67
    iput p2, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showOverline:Z

    .line 81
    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showShadows:Z

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lkankan/wheel/widget/WheelView;->selectionLineColor:I

    .line 89
    iput-boolean p2, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    .line 101
    new-instance p2, Lkankan/wheel/widget/WheelRecycle;

    invoke-direct {p2, p0}, Lkankan/wheel/widget/WheelRecycle;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    .line 104
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 105
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 106
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 169
    new-instance p2, Lkankan/wheel/widget/WheelView$1;

    invoke-direct {p2, p0}, Lkankan/wheel/widget/WheelView$1;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    .line 242
    new-instance p2, Lkankan/wheel/widget/WheelView$2;

    invoke-direct {p2, p0}, Lkankan/wheel/widget/WheelView$2;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 121
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 p3, 0x5

    .line 64
    iput p3, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 67
    iput p2, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    const/4 p3, 0x1

    .line 72
    iput-boolean p3, p0, Lkankan/wheel/widget/WheelView;->showOverline:Z

    .line 81
    iput-boolean p3, p0, Lkankan/wheel/widget/WheelView;->showShadows:Z

    const/4 p3, -0x1

    .line 87
    iput p3, p0, Lkankan/wheel/widget/WheelView;->selectionLineColor:I

    .line 89
    iput-boolean p2, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    .line 101
    new-instance p2, Lkankan/wheel/widget/WheelRecycle;

    invoke-direct {p2, p0}, Lkankan/wheel/widget/WheelRecycle;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    .line 104
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 105
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 106
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 169
    new-instance p2, Lkankan/wheel/widget/WheelView$1;

    invoke-direct {p2, p0}, Lkankan/wheel/widget/WheelView$1;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    .line 242
    new-instance p2, Lkankan/wheel/widget/WheelView$2;

    invoke-direct {p2, p0}, Lkankan/wheel/widget/WheelView$2;-><init>(Lkankan/wheel/widget/WheelView;)V

    iput-object p2, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 113
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lkankan/wheel/widget/WheelView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$002(Lkankan/wheel/widget/WheelView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lkankan/wheel/widget/WheelView;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lkankan/wheel/widget/WheelView;)I
    .locals 0

    .line 45
    iget p0, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$202(Lkankan/wheel/widget/WheelView;I)I
    .locals 0

    .line 45
    iput p1, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lkankan/wheel/widget/WheelView;)Lkankan/wheel/widget/WheelScroller;
    .locals 0

    .line 45
    iget-object p0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    return-object p0
.end method

.method private addViewItem(IZ)Z
    .locals 1

    .line 883
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 886
    iget-object p2, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 888
    :cond_0
    iget-object p2, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private buildViewForMeasuring()V
    .locals 4

    .line 861
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    new-instance v3, Lkankan/wheel/widget/ItemsRange;

    invoke-direct {v3}, Lkankan/wheel/widget/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lkankan/wheel/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILkankan/wheel/widget/ItemsRange;)I

    goto :goto_0

    .line 864
    :cond_0
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->createItemsLayout()V

    .line 868
    :goto_0
    iget v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/lit8 v0, v0, 0x2

    .line 869
    iget v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    const/4 v2, 0x1

    .line 870
    invoke-direct {p0, v1, v2}, Lkankan/wheel/widget/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 871
    iput v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 4

    .line 522
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->initResourcesIfNecessary()V

    .line 525
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 527
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 526
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 528
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x14

    .line 536
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 543
    :goto_0
    iget-object p2, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, -0x14

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 544
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 543
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    return p1
.end method

.method private createItemsLayout()V
    .locals 2

    .line 850
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 851
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 852
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 7

    .line 696
    iget v0, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    .line 698
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result p1

    .line 699
    iget v0, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    div-int/2addr v0, p1

    .line 701
    iget v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int/2addr v1, v0

    .line 702
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 704
    iget v3, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    rem-int/2addr v3, p1

    .line 705
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    const/4 v3, 0x0

    .line 708
    :cond_0
    iget-boolean v4, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    if-gez v1, :cond_3

    add-int/2addr v1, v2

    goto :goto_0

    .line 720
    :cond_3
    rem-int/2addr v1, v2

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    .line 724
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-lt v1, v2, :cond_6

    .line 727
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 738
    :cond_8
    :goto_1
    iget v2, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    .line 739
    iget v3, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-eq v1, v3, :cond_9

    .line 740
    invoke-virtual {p0, v1, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    goto :goto_2

    .line 742
    :cond_9
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    :goto_2
    mul-int v0, v0, p1

    sub-int/2addr v2, v0

    .line 746
    iput v2, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    .line 747
    iget p1, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v0

    if-le p1, v0, :cond_a

    .line 748
    iget p1, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    :cond_a
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 5

    .line 653
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 654
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 655
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v3, v0, v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v4

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 656
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 3

    .line 637
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 639
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    iget v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 640
    iget v1, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 642
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 644
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawSelectionLines(Landroid/graphics/Canvas;)V
    .locals 7

    .line 611
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 612
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 613
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->topCenterLine:Landroid/graphics/drawable/Drawable;

    sub-int v3, v0, v1

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 614
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->topCenterLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 616
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->bottomCenterLine:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v6, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 617
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomCenterLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5

    .line 624
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 625
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 626
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 628
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 629
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    .line 489
    :cond_0
    iget p1, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    iget v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    mul-int p1, p1, v0

    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x32

    sub-int/2addr p1, v0

    .line 491
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getItemHeight()I
    .locals 2

    .line 503
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 504
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    return v0

    .line 507
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    .line 509
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    return v0

    .line 512
    :cond_1
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 3

    .line 913
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 916
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 917
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 918
    iget-object p1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0, v1}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 925
    :cond_2
    rem-int/2addr p1, v0

    .line 926
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    invoke-virtual {v1}, Lkankan/wheel/widget/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemsRange()Lkankan/wheel/widget/ItemsRange;
    .locals 5

    .line 767
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 771
    :cond_0
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    const/4 v1, 0x1

    .line 774
    :goto_0
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v2

    mul-int v2, v2, v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 779
    :cond_1
    iget v2, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    if-eqz v2, :cond_3

    .line 780
    iget v2, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 786
    iget v2, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-double v3, v1

    int-to-double v1, v2

    .line 788
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    double-to-int v1, v3

    .line 790
    :cond_3
    new-instance v2, Lkankan/wheel/widget/ItemsRange;

    invoke-direct {v2, v0, v1}, Lkankan/wheel/widget/ItemsRange;-><init>(II)V

    return-object v2
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2

    .line 165
    new-instance p1, Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->scrollingListener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;

    invoke-direct {p1, v0, v1}, Lkankan/wheel/widget/WheelScroller;-><init>(Landroid/content/Context;Lkankan/wheel/widget/WheelScroller$ScrollingListener;)V

    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .line 461
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 462
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 463
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 466
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 470
    :cond_1
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 471
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x70222222
        0x70222222
        0x70eeeeee
    .end array-data
.end method

.method private isValidItemIndex(I)Z
    .locals 1

    .line 903
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    .line 904
    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layout(II)V
    .locals 2

    add-int/lit8 p1, p1, -0x14

    .line 587
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method private rebuildItems()Z
    .locals 6

    .line 800
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemsRange()Lkankan/wheel/widget/ItemsRange;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 802
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    invoke-virtual {v1, v4, v5, v0}, Lkankan/wheel/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILkankan/wheel/widget/ItemsRange;)I

    move-result v1

    .line 803
    iget v4, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    if-eq v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 804
    :goto_0
    iput v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    goto :goto_1

    .line 806
    :cond_1
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->createItemsLayout()V

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    .line 811
    iget v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    invoke-virtual {v0}, Lkankan/wheel/widget/ItemsRange;->getFirst()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lkankan/wheel/widget/ItemsRange;->getCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 814
    :cond_4
    :goto_3
    iget v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    invoke-virtual {v0}, Lkankan/wheel/widget/ItemsRange;->getFirst()I

    move-result v5

    if-le v1, v5, :cond_6

    iget v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    invoke-virtual {v0}, Lkankan/wheel/widget/ItemsRange;->getLast()I

    move-result v5

    if-gt v1, v5, :cond_6

    .line 815
    iget v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    sub-int/2addr v1, v3

    :goto_4
    invoke-virtual {v0}, Lkankan/wheel/widget/ItemsRange;->getFirst()I

    move-result v5

    if-lt v1, v5, :cond_7

    .line 816
    invoke-direct {p0, v1, v3}, Lkankan/wheel/widget/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 819
    :cond_5
    iput v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 822
    :cond_6
    invoke-virtual {v0}, Lkankan/wheel/widget/ItemsRange;->getFirst()I

    move-result v1

    iput v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    .line 825
    :cond_7
    :goto_5
    iget v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    .line 826
    iget-object v3, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :goto_6
    invoke-virtual {v0}, Lkankan/wheel/widget/ItemsRange;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 827
    iget v5, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v2}, Lkankan/wheel/widget/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 831
    :cond_9
    iput v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    return v4
.end method

.method private updateView()V
    .locals 2

    .line 840
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->calculateLayoutWidth(II)I

    .line 842
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->layout(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Lkankan/wheel/widget/OnWheelClickedListener;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lkankan/wheel/widget/OnWheelScrollListener;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .line 364
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    return v0
.end method

.method public getSelectionLineColor()I
    .locals 1

    .line 149
    iget v0, p0, Lkankan/wheel/widget/WheelView;->selectionLineColor:I

    return v0
.end method

.method public getSelectionOverlineVisible()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showOverline:Z

    return v0
.end method

.method public getShadowVisible()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showShadows:Z

    return v0
.end method

.method public getViewAdapter()Lkankan/wheel/widget/adapters/WheelViewAdapter;
    .locals 1

    .line 238
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .line 219
    iget v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 444
    iget-object p1, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    invoke-virtual {p1}, Lkankan/wheel/widget/WheelRecycle;->clearAll()V

    .line 445
    iget-object p1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 446
    iget-object p1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    .line 448
    iput p1, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    goto :goto_0

    .line 449
    :cond_1
    iget-object p1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 451
    iget-object p1, p0, Lkankan/wheel/widget/WheelView;->recycle:Lkankan/wheel/widget/WheelRecycle;

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lkankan/wheel/widget/WheelView;->firstItem:I

    new-instance v2, Lkankan/wheel/widget/ItemsRange;

    invoke-direct {v2}, Lkankan/wheel/widget/ItemsRange;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lkankan/wheel/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILkankan/wheel/widget/ItemsRange;)I

    .line 454
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    return-void
.end method

.method public isCyclic()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 2

    .line 294
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkankan/wheel/widget/OnWheelChangedListener;

    .line 295
    invoke-interface {v1, p0, p1, p2}, Lkankan/wheel/widget/OnWheelChangedListener;->onChanged(Lkankan/wheel/widget/WheelView;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 2

    .line 353
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkankan/wheel/widget/OnWheelClickedListener;

    .line 354
    invoke-interface {v1, p0, p1}, Lkankan/wheel/widget/OnWheelClickedListener;->onItemClicked(Lkankan/wheel/widget/WheelView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    .line 328
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkankan/wheel/widget/OnWheelScrollListener;

    .line 329
    invoke-interface {v1, p0}, Lkankan/wheel/widget/OnWheelScrollListener;->onScrollingFinished(Lkankan/wheel/widget/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    .line 319
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkankan/wheel/widget/OnWheelScrollListener;

    .line 320
    invoke-interface {v1, p0}, Lkankan/wheel/widget/OnWheelScrollListener;->onScrollingStarted(Lkankan/wheel/widget/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 592
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 594
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 595
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->updateView()V

    .line 597
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 598
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showOverline:Z

    if-eqz v0, :cond_0

    .line 599
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 600
    :cond_0
    iget v0, p0, Lkankan/wheel/widget/WheelView;->selectionLineColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 601
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawSelectionLines(Landroid/graphics/Canvas;)V

    .line 604
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showShadows:Z

    if-eqz v0, :cond_2

    .line 605
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 576
    invoke-direct {p0, p4, p5}, Lkankan/wheel/widget/WheelView;->layout(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 551
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 552
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 553
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 554
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 556
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->buildViewForMeasuring()V

    .line 558
    invoke-direct {p0, p1, v0}, Lkankan/wheel/widget/WheelView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lkankan/wheel/widget/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 567
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 571
    :goto_0
    invoke-virtual {p0, p1, p2}, Lkankan/wheel/widget/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 661
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getViewAdapter()Lkankan/wheel/widget/adapters/WheelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 665
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 667
    :pswitch_0
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 668
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 673
    :pswitch_1
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_2

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 676
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 678
    :cond_1
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 680
    :goto_0
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 681
    iget v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lkankan/wheel/widget/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    iget v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkankan/wheel/widget/WheelView;->notifyClickListenersAboutClick(I)V

    .line 688
    :cond_2
    :goto_1
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {v0, p1}, Lkankan/wheel/widget/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Lkankan/wheel/widget/OnWheelClickedListener;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lkankan/wheel/widget/OnWheelScrollListener;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 1

    .line 758
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemHeight()I

    move-result v0

    mul-int p1, p1, v0

    iget v0, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    sub-int/2addr p1, v0

    .line 759
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {v0, p1, p2}, Lkankan/wheel/widget/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, p1, v0}, Lkankan/wheel/widget/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3

    .line 374
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 378
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 380
    :cond_1
    iget-boolean v1, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    if-eqz v1, :cond_8

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 384
    :cond_2
    rem-int/2addr p1, v0

    .line 389
    :cond_3
    iget v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 391
    iget p2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int p2, p1, p2

    .line 392
    iget-boolean v2, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    if-eqz v2, :cond_5

    .line 393
    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 394
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_5

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    neg-int p1, v0

    move p2, p1

    .line 398
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v1}, Lkankan/wheel/widget/WheelView;->scroll(II)V

    goto :goto_2

    .line 400
    :cond_6
    iput v1, p0, Lkankan/wheel/widget/WheelView;->scrollingOffset:I

    .line 402
    iget p2, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 403
    iput p1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 405
    iget p1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    invoke-virtual {p0, p2, p1}, Lkankan/wheel/widget/WheelView;->notifyChangingListeners(II)V

    .line 407
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    :cond_7
    :goto_2
    return-void

    :cond_8
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->isCyclic:Z

    const/4 p1, 0x0

    .line 435
    invoke-virtual {p0, p1}, Lkankan/wheel/widget/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {v0, p1}, Lkankan/wheel/widget/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    .line 496
    iput p1, p0, Lkankan/wheel/widget/WheelView;->itemHeight:I

    return-void
.end method

.method public setSelectionLineColor(I)V
    .locals 1

    .line 142
    iput p1, p0, Lkankan/wheel/widget/WheelView;->selectionLineColor:I

    .line 143
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->topCenterLine:Landroid/graphics/drawable/Drawable;

    .line 144
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomCenterLine:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->refreshDrawableState()V

    return-void
.end method

.method public setSelectionOverlineVisible(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->showOverline:Z

    .line 154
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->refreshDrawableState()V

    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->showShadows:Z

    .line 134
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->refreshDrawableState()V

    return-void
.end method

.method public setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 264
    :cond_0
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    .line 265
    iget-object p1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Lkankan/wheel/widget/WheelView;->viewAdapter:Lkankan/wheel/widget/adapters/WheelViewAdapter;

    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lkankan/wheel/widget/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 p1, 0x1

    .line 269
    invoke-virtual {p0, p1}, Lkankan/wheel/widget/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .line 230
    iput p1, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .line 933
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->scroller:Lkankan/wheel/widget/WheelScroller;

    invoke-virtual {v0}, Lkankan/wheel/widget/WheelScroller;->stopScrolling()V

    return-void
.end method
