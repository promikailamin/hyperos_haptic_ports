.class public final Landroid/internal/perfetto/protos/AppWakelockData$AppWakelockInfo;
.super Ljava/lang/Object;
.source "AppWakelockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/AppWakelockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppWakelockInfo"
.end annotation


# static fields
.field public static final blacklist FLAGS:J = 0x10500000003L

.field public static final blacklist IID:J = 0x10500000001L

.field public static final blacklist OWNER_PID:J = 0x10500000004L

.field public static final blacklist OWNER_UID:J = 0x10500000005L

.field public static final blacklist TAG:J = 0x10900000002L

.field public static final blacklist WORK_UID:J = 0x10500000006L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/AppWakelockData;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
