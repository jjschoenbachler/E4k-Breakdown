.class final synthetic Lcom/google/android/gms/cloudmessaging/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/cloudmessaging/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/zzf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzm;->zza:Lcom/google/android/gms/cloudmessaging/zzf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzm;->zza:Lcom/google/android/gms/cloudmessaging/zzf;

    const-string v1, "Service disconnected"

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/zzf;->zza(ILjava/lang/String;)V

    return-void
.end method
