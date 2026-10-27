.class public final Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto;
.super Ljava/lang/Object;
.source "Inputconnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Inputconnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputConnectionCallProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetExtractedText;,
        Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetCursorCapsMode;,
        Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetSurroundingText;,
        Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetSelectedText;,
        Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetTextAfterCursor;,
        Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetTextBeforeCursor;
    }
.end annotation


# static fields
.field public static final blacklist GET_CURSOR_CAPS_MODE:J = 0x10b00000005L

.field public static final blacklist GET_EXTRACTED_TEXT:J = 0x10b00000006L

.field public static final blacklist GET_SELECTED_TEXT:J = 0x10b00000003L

.field public static final blacklist GET_SURROUNDING_TEXT:J = 0x10b00000004L

.field public static final blacklist GET_TEXT_AFTER_CURSOR:J = 0x10b00000002L

.field public static final blacklist GET_TEXT_BEFORE_CURSOR:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Inputconnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
