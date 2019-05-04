.class final Lcom/google/android/gms/internal/zzph$zza;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzph$zza$zza;
    }
.end annotation


# static fields
.field private static final zzaqh:Lcom/google/android/gms/internal/zzph$zza;

.field private static final zzaqi:Lcom/google/android/gms/internal/zzph$zza$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzph$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzph$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzph$zza;->zzaqh:Lcom/google/android/gms/internal/zzph$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzph$zza$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzph$zza$zza;-><init>(Lcom/google/android/gms/internal/zzph$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zzph$zza;->zzaqi:Lcom/google/android/gms/internal/zzph$zza$zza;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method static synthetic zztd()Lcom/google/android/gms/internal/zzph$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzph$zza;->zzaqh:Lcom/google/android/gms/internal/zzph$zza;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzph$zza;->zzaqi:Lcom/google/android/gms/internal/zzph$zza$zza;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
