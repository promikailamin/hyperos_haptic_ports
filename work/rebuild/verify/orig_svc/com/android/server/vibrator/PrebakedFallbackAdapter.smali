.class public final Lcom/android/server/vibrator/PrebakedFallbackAdapter;
.super Ljava/lang/Object;
.source "PrebakedFallbackAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# instance fields
.field public final mFallbackEffects:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/vibrator/PrebakedFallbackAdapter;->mFallbackEffects:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .registers 4

    .line 0
    return p3
.end method
