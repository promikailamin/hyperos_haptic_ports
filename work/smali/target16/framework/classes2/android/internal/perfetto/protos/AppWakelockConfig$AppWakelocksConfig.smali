.class public final Landroid/internal/perfetto/protos/AppWakelockConfig$AppWakelocksConfig;
.super Ljava/lang/Object;
.source "AppWakelockConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/AppWakelockConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppWakelocksConfig"
.end annotation


# static fields
.field public static final blacklist DROP_OWNER_PID:J = 0x10800000003L

.field public static final blacklist FILTER_DURATION_BELOW_MS:J = 0x10500000002L

.field public static final blacklist WRITE_DELAY_MS:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/AppWakelockConfig;)V
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
