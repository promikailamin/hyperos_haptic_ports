.class public Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;
.super Ljava/lang/Object;
.source "ParsedUsesPermissionImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedUsesPermission;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;",
            ">;"
        }
    .end annotation
.end field

.field static sParcellingForName:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private usesPermissionFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 101
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 102
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 105
    if-nez v0, :cond_15

    .line 106
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 146
    :cond_15
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    invoke-interface {v0, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, "_name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, "_usesPermissionFlags":I
    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 136
    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 138
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 139
    const-class v2, Lcom/android/server/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "usesPermissionFlags"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 65
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 67
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 68
    const-class v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 72
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUsesPermissionFlags()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    return v0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 87
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 89
    return-object p0
.end method

.method public setUsesPermissionFlags(I)Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;
    .registers 4
    .param p1, "value"    # I

    .line 94
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 95
    const-class v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 97
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 118
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void
.end method
