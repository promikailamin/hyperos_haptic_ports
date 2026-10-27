.class public final Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"


# instance fields
.field public final mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/pm/InstantAppInfo;J)V
    .registers 4

    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 1274
    iput-wide p2, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    return-void
.end method
