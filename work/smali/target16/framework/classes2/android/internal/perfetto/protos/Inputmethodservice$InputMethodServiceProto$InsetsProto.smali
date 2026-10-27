.class public final Landroid/internal/perfetto/protos/Inputmethodservice$InputMethodServiceProto$InsetsProto;
.super Ljava/lang/Object;
.source "Inputmethodservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Inputmethodservice$InputMethodServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InsetsProto"
.end annotation


# static fields
.field public static final blacklist CONTENT_TOP_INSETS:J = 0x10500000001L

.field public static final blacklist TOUCHABLE_INSETS:J = 0x10500000003L

.field public static final blacklist TOUCHABLE_REGION:J = 0x10900000004L

.field public static final blacklist VISIBLE_TOP_INSETS:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Inputmethodservice$InputMethodServiceProto;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
