.class public final Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetExtractedText;
.super Ljava/lang/Object;
.source "Inputconnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GetExtractedText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto$GetExtractedText$ExtractedTextRequest;
    }
.end annotation


# static fields
.field public static final blacklist FLAGS:J = 0x10500000002L

.field public static final blacklist REQUEST:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Inputconnection$InputConnectionCallProto;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
