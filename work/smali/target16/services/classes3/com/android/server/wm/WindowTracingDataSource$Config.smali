.class public Lcom/android/server/wm/WindowTracingDataSource$Config;
.super Ljava/lang/Object;
.source "WindowTracingDataSource.java"


# instance fields
.field public final mLogFrequency:I

.field public final mLogLevel:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogLevel:I

    .line 75
    iput p2, p0, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/server/wm/WindowTracingDataSource-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowTracingDataSource$Config;-><init>(II)V

    return-void
.end method
