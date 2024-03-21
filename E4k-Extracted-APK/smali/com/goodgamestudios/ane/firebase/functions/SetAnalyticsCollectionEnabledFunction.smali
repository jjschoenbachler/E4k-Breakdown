.class public Lcom/goodgamestudios/ane/firebase/functions/SetAnalyticsCollectionEnabledFunction;
.super Ljava/lang/Object;
.source "SetAnalyticsCollectionEnabledFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final NAME:Ljava/lang/String; = "setAnalyticsCollectionEnabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    const/4 v0, 0x0

    .line 16
    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/goodgamestudios/ane/firebase/FREUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 17
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    const/4 p1, 0x0

    return-object p1
.end method
