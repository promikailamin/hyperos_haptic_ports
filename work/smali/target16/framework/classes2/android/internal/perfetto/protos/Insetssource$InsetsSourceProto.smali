.class public final Landroid/internal/perfetto/protos/Insetssource$InsetsSourceProto;
.super Ljava/lang/Object;
.source "Insetssource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Insetssource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InsetsSourceProto"
.end annotation


# static fields
.field public static final blacklist ATTACHED_INSETS:J = 0x10b00000006L

.field public static final blacklist FRAME:J = 0x10b00000002L

.field public static final blacklist TYPE:J = 0x10900000001L

.field public static final blacklist TYPE_NUMBER:J = 0x10500000005L

.field public static final blacklist VISIBLE:J = 0x10800000004L

.field public static final blacklist VISIBLE_FRAME:J = 0x10b00000003L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Insetssource;)V
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
