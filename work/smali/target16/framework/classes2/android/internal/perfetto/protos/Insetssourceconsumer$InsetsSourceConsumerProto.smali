.class public final Landroid/internal/perfetto/protos/Insetssourceconsumer$InsetsSourceConsumerProto;
.super Ljava/lang/Object;
.source "Insetssourceconsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Insetssourceconsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InsetsSourceConsumerProto"
.end annotation


# static fields
.field public static final blacklist ANIMATION_STATE:J = 0x10500000007L

.field public static final blacklist HAS_WINDOW_FOCUS:J = 0x10800000002L

.field public static final blacklist INTERNAL_INSETS_TYPE:J = 0x10900000001L

.field public static final blacklist IS_REQUESTED_VISIBLE:J = 0x10800000003L

.field public static final blacklist PENDING_FRAME:J = 0x10b00000005L

.field public static final blacklist PENDING_VISIBLE_FRAME:J = 0x10b00000006L

.field public static final blacklist SOURCE_CONTROL:J = 0x10b00000004L

.field public static final blacklist TYPE_NUMBER:J = 0x10500000008L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Insetssourceconsumer;)V
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
