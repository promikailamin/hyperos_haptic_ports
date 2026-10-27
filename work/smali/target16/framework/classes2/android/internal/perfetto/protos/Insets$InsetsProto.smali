.class public final Landroid/internal/perfetto/protos/Insets$InsetsProto;
.super Ljava/lang/Object;
.source "Insets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Insets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InsetsProto"
.end annotation


# static fields
.field public static final blacklist BOTTOM:J = 0x10500000004L

.field public static final blacklist LEFT:J = 0x10500000001L

.field public static final blacklist RIGHT:J = 0x10500000003L

.field public static final blacklist TOP:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Insets;)V
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
