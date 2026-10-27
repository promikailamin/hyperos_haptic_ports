.class public final Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetExtractedText$ExtractedTextRequest;
.super Ljava/lang/Object;
.source "Inputconnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetExtractedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractedTextRequest"
.end annotation


# static fields
.field public static final blacklist FLAGS:J = 0x10500000002L

.field public static final blacklist HINT_MAX_CHARS:J = 0x10500000004L

.field public static final blacklist HINT_MAX_LINES:J = 0x10500000003L

.field public static final blacklist TOKEN:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetExtractedText;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
