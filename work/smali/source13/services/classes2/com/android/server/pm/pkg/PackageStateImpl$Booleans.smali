.class Lcom/android/server/pm/pkg/PackageStateImpl$Booleans;
.super Ljava/lang/Object;
.source "PackageStateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/PackageStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Booleans"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/PackageStateImpl$Booleans$Flags;
    }
.end annotation


# static fields
.field private static final EXTERNAL_STORAGE:I = 0x2

.field private static final FORCE_QUERYABLE_OVERRIDE:I = 0x200

.field private static final HIDDEN_UNTIL_INSTALLED:I = 0x400

.field private static final INSTALL_PERMISSIONS_FIXED:I = 0x800

.field private static final ODM:I = 0x100

.field private static final OEM:I = 0x8

.field private static final PRIVILEGED:I = 0x4

.field private static final PRODUCT:I = 0x20

.field private static final REQUIRED_FOR_SYSTEM_USER:I = 0x80

.field private static final SYSTEM:I = 0x1

.field private static final SYSTEM_EXT:I = 0x40

.field private static final UPDATED_SYSTEM_APP:I = 0x2000

.field private static final UPDATE_AVAILABLE:I = 0x1000

.field private static final VENDOR:I = 0x10


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
