.class public Lcom/ironsource/environment/ExceptionLog;
.super Ljava/lang/Object;
.source "ExceptionLog.java"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mId:I

.field private mIsAnr:Ljava/lang/String;

.field private mStacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/ironsource/environment/ExceptionLog;->mId:I

    .line 19
    iput-object p3, p0, Lcom/ironsource/environment/ExceptionLog;->mDate:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/ironsource/environment/ExceptionLog;->mStacktrace:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/ironsource/environment/ExceptionLog;->mIsAnr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/ironsource/environment/ExceptionLog;->mId:I

    .line 13
    iput-object p2, p0, Lcom/ironsource/environment/ExceptionLog;->mDate:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/ironsource/environment/ExceptionLog;->mStacktrace:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/ironsource/environment/ExceptionLog;->mIsAnr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Save()V
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/ironsource/environment/DbHandler;->addReport(Lcom/ironsource/environment/ExceptionLog;)V

    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ironsource/environment/ExceptionLog;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/ironsource/environment/ExceptionLog;->mId:I

    return v0
.end method

.method public getIsAnr()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ironsource/environment/ExceptionLog;->mIsAnr:Ljava/lang/String;

    return-object v0
.end method

.method public getStacktrace()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ironsource/environment/ExceptionLog;->mStacktrace:Ljava/lang/String;

    return-object v0
.end method
