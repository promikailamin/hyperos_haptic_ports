.class public Landroid/content/pm/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist deniedPermissions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gwpAsanMode:I

.field public blacklist memtagMode:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist nativeHeapZeroInitialized:I

.field public blacklist useEmbeddedDex:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 141
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;

    .line 142
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    .line 145
    sget-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 146
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    .line 206
    :cond_17
    new-instance v0, Landroid/content/pm/ProcessInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ProcessInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ProcessInfo;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p1, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    iput-object v0, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 75
    iget v0, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 76
    iget v0, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 77
    iget v0, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 78
    iget-boolean p1, p1, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    iput-boolean p1, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    .line 79
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 180
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 181
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    sget-object v2, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    invoke-interface {v2, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 187
    iput-object v1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 188
    const-class v1, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 190
    iput-object v2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 191
    iput v3, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 192
    const-class v1, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    iget v2, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-static {v1, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 194
    iput v4, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 195
    const-class v1, Landroid/content/pm/ApplicationInfo$MemtagMode;

    iget v2, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-static {v1, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 197
    iput p1, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 198
    const-class p1, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    iget v1, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    invoke-static {p1, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 200
    iput-boolean v0, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    .line 203
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArraySet;IIIZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    .line 123
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 125
    iput-object p2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 126
    iput p3, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    .line 127
    const-class p1, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    invoke-static {p1, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 129
    iput p4, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    .line 130
    const-class p1, Landroid/content/pm/ApplicationInfo$MemtagMode;

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 132
    iput p5, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    .line 133
    const-class p1, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    invoke-static {p1, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 135
    iput-boolean p6, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    .line 138
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 157
    nop

    .line 158
    iget-boolean v0, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x20

    int-to-byte v0, v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 159
    :goto_a
    iget-object v1, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v1, :cond_11

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 160
    :cond_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    iget-object v0, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    sget-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 163
    iget p2, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget p2, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget p2, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return-void
.end method
