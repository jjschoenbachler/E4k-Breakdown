.class public final Landroidx/work/Operation$State$FAILURE;
.super Landroidx/work/Operation$State;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Operation$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FAILURE"
.end annotation


# instance fields
.field private final mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 130
    invoke-direct {p0}, Landroidx/work/Operation$State;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/work/Operation$State$FAILURE;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 139
    iget-object v0, p0, Landroidx/work/Operation$State$FAILURE;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "FAILURE (%s)"

    const/4 v1, 0x1

    .line 145
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/Operation$State$FAILURE;->mThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
