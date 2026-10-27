.class public Lcom/android/server/wm/AppCompatDisplayOverrides;
.super Ljava/lang/Object;
.source "AppCompatDisplayOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/wm/AppCompatDisplayOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public shouldRestartOnDisplayMove()Z
    .registers 3

    .line 41
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v0, 0x1980e938

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    return p0
.end method
