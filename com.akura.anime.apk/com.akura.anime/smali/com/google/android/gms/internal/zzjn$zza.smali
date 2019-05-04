.class public final Lcom/google/android/gms/internal/zzjn$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzig;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzjn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzOW:Lorg/json/JSONObject;

.field public final zzOY:Lcom/google/android/gms/internal/zzfr;

.field public final zzPc:J

.field public final zzPd:J

.field public final zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public final zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

.field public final zzsB:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzfr;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzPh:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzPi:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzOY:Lcom/google/android/gms/internal/zzfr;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzsB:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput p5, p0, Lcom/google/android/gms/internal/zzjn$zza;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzPc:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzPd:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzjn$zza;->zzOW:Lorg/json/JSONObject;

    return-void
.end method
