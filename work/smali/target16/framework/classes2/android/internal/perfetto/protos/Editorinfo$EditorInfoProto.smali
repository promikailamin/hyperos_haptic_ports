.class public final Landroid/internal/perfetto/protos/Editorinfo$EditorInfoProto;
.super Ljava/lang/Object;
.source "Editorinfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Editorinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorInfoProto"
.end annotation


# static fields
.field public static final blacklist FIELD_ID:J = 0x10500000005L

.field public static final blacklist IME_OPTIONS:J = 0x10500000002L

.field public static final blacklist INPUT_TYPE:J = 0x10500000001L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000004L

.field public static final blacklist PRIVATE_IME_OPTIONS:J = 0x10900000003L

.field public static final blacklist TARGET_INPUT_METHOD_USER_ID:J = 0x10500000006L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Editorinfo;)V
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
