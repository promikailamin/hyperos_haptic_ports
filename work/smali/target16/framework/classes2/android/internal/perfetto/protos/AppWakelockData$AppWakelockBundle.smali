.class public final Landroid/internal/perfetto/protos/AppWakelockData$AppWakelockBundle;
.super Ljava/lang/Object;
.source "AppWakelockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/AppWakelockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppWakelockBundle"
.end annotation


# static fields
.field public static final blacklist ACQUIRED:J = 0x10800000004L

.field public static final blacklist ENCODED_TS:J = 0x50400000002L

.field public static final blacklist INFO:J = 0x10b00000003L

.field public static final blacklist INTERN_ID:J = 0x50d00000001L


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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
