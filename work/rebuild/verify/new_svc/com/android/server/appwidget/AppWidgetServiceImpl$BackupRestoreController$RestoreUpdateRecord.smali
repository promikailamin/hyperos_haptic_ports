.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# instance fields
.field public newId:I

.field public notified:Z

.field public oldId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 7395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7396
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    .line 7397
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    const/4 p1, 0x0

    .line 7398
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    return-void
.end method
