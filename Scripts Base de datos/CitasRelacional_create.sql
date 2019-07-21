-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-07-17 20:21:32.589

-- tables
-- Table: Afiliado
CREATE TABLE "Afiliado" (
    "k_documento" int  NOT NULL,
    "o_tipoAfiliacion" varchar(50)  NOT NULL CHECK ("afiliado","beneficiario"),
    "i_multa" boolean  NOT NULL,
    "i_activo" boolean  NOT NULL,
    "o_categoria" int  NOT NULL,
    "Afiliado_k_documento" int  NULL,
    CONSTRAINT "Afiliado_pk" PRIMARY KEY ("k_documento")
);

COMMENT ON TABLE "Afiliado" IS 'Tabla que contiene todos los datos e información del paciente.';
COMMENT ON COLUMN "Afiliado"."k_documento" IS 'Numero de documento del paciente';
COMMENT ON COLUMN "Afiliado"."o_tipoAfiliacion" IS 'Tipo de afiliacion que puede tener un paciente. (afiliado, beneficiario)';
COMMENT ON COLUMN "Afiliado"."i_multa" IS 'Indica si el usuario tiene multas sin pagar o no.';
COMMENT ON COLUMN "Afiliado"."i_activo" IS 'Indica si el usuario esta activo para pedir citas, dependiendo de si tiene multas sin pagar o no.';
COMMENT ON COLUMN "Afiliado"."o_categoria" IS 'Categoría a la que pertenece el afiliado';
COMMENT ON COLUMN "Afiliado"."Afiliado_k_documento" IS 'Indica de quien es afiliado el beneficiario';

-- Table: Agenda
CREATE TABLE "Agenda" (
    "k_agenda" int  NOT NULL,
    "f_agenda" date  NOT NULL,
    "o_horaInicial" int  NOT NULL,
    "o_horaFinal" int  NOT NULL,
    "o_medico" int  NOT NULL,
    "o_cita" int  NULL,
    "o_tipoCita" int  NOT NULL,
    CONSTRAINT "Agenda_pk" PRIMARY KEY ("k_agenda")
);

COMMENT ON TABLE "Agenda" IS 'Representa la agenda del medico, todas las citas que tendrá y podrá atender durante el mes.';
COMMENT ON COLUMN "Agenda"."k_agenda" IS 'Identificador de la agenda generada';
COMMENT ON COLUMN "Agenda"."o_horaInicial" IS 'Hora en que inicia cita';
COMMENT ON COLUMN "Agenda"."o_horaFinal" IS 'Hora de fin de la cita, depende del tipo de cita';
COMMENT ON COLUMN "Agenda"."o_medico" IS 'Medico asignado a la respectiva agenda';
COMMENT ON COLUMN "Agenda"."o_cita" IS 'Representa una cita en la agenda del medico.';

-- Table: Categoria
CREATE TABLE "Categoria" (
    "k_categoria" int  NOT NULL,
    "v_copago" int  NOT NULL,
    "v_multa" int  NOT NULL,
    CONSTRAINT "Categoria_pk" PRIMARY KEY ("k_categoria")
);

COMMENT ON TABLE "Categoria" IS 'Muestra la información relacionada a la categoría del paciente.';
COMMENT ON COLUMN "Categoria"."k_categoria" IS 'Código de la categoría del paciente.';
COMMENT ON COLUMN "Categoria"."v_copago" IS 'Valor del copago del afiliado de acuerdo a la categoria.';
COMMENT ON COLUMN "Categoria"."v_multa" IS 'Valor de la multa del afiliado';

-- Table: Cita
CREATE TABLE "Cita" (
    "k_cita" int  NOT NULL,
    "v_cita" int  NOT NULL,
    "f_cita" date  NOT NULL,
    "i_estado" boolean  NOT NULL,
    "o_prescripcion" int  NULL,
    "o_diagnostico" int  NULL,
    "o_paciente" int  NOT NULL,
    "o_multa" int  NULL,
    CONSTRAINT "Cita_pk" PRIMARY KEY ("k_cita")
);

COMMENT ON TABLE "Cita" IS 'Cita que le sera asignada al paciente';
COMMENT ON COLUMN "Cita"."k_cita" IS 'Identificador unico de la cita';
COMMENT ON COLUMN "Cita"."v_cita" IS 'Valor de la cita, dependiendo del tipo de cita y otros requerimientos.';
COMMENT ON COLUMN "Cita"."f_cita" IS 'Fecha de la cita';
COMMENT ON COLUMN "Cita"."i_estado" IS 'Si esta activa o cancelada';
COMMENT ON COLUMN "Cita"."o_prescripcion" IS 'prescripcion que el medico da';
COMMENT ON COLUMN "Cita"."o_diagnostico" IS 'Diagnostico que da el medico.';
COMMENT ON COLUMN "Cita"."o_paciente" IS 'Llave del paciente que solicito la cita.';
COMMENT ON COLUMN "Cita"."o_multa" IS 'Multa que se le asigna a la cita en caso de que se haya inclumplido.';

-- Table: Consultorio
CREATE TABLE "Consultorio" (
    "k_consultorio" int  NOT NULL,
    "o_sede" int  NOT NULL,
    CONSTRAINT "Consultorio_pk" PRIMARY KEY ("k_consultorio")
);

COMMENT ON TABLE "Consultorio" IS 'Guarda los datos del lugar donde trabajara el medico.';
COMMENT ON COLUMN "Consultorio"."k_consultorio" IS 'identificador del consultorio';
COMMENT ON COLUMN "Consultorio"."o_sede" IS 'sede a la cual esta adscrito el consultorio';

-- Table: Especialidad
CREATE TABLE "Especialidad" (
    "k_especialidad" int  NOT NULL,
    "o_nombre" varchar(50)  NOT NULL,
    CONSTRAINT "Especialidad_pk" PRIMARY KEY ("k_especialidad")
);

COMMENT ON TABLE "Especialidad" IS 'Tabla que guarda la información de las especialidades de los médicos y los consultorios.';
COMMENT ON COLUMN "Especialidad"."k_especialidad" IS 'Rama especifica de la medicina en la cual se ha especializado el medico';
COMMENT ON COLUMN "Especialidad"."o_nombre" IS 'Nombre de la especialidad';

-- Table: Medico
CREATE TABLE "Medico" (
    "k_documento" int  NOT NULL,
    "o_registroMedico" int  NOT NULL,
    "o_especialidad" int  NOT NULL,
    "o_consultorio" int  NOT NULL,
    "o_franja" int  NOT NULL,
    CONSTRAINT "Medico_pk" PRIMARY KEY ("k_documento")
);

COMMENT ON TABLE "Medico" IS 'Guarda los datos correspondientes al medico';
COMMENT ON COLUMN "Medico"."k_documento" IS 'documento de identidad del medico';
COMMENT ON COLUMN "Medico"."o_registroMedico" IS 'registro profesional del medico';
COMMENT ON COLUMN "Medico"."o_franja" IS 'Indica la franja en la que el medico usara el consultorio asignado.';

-- Table: Multa
CREATE TABLE "Multa" (
    "k_multa" int  NOT NULL,
    "v_multa" int  NOT NULL,
    "i_estado" boolean  NOT NULL,
    CONSTRAINT "Multa_pk" PRIMARY KEY ("k_multa")
);

COMMENT ON TABLE "Multa" IS 'Guarda la informacion relacionada con las multas que tiene usuario del sistema.';
COMMENT ON COLUMN "Multa"."k_multa" IS 'Clave de la multa';
COMMENT ON COLUMN "Multa"."v_multa" IS 'Valor que genera la multa, depende de la categoria a la que pertenesca el usuario.';

-- Table: Sede
CREATE TABLE "Sede" (
    "k_sede" int  NOT NULL,
    "n_sede" varchar(50)  NOT NULL,
    "o_telefonoSede" int  NOT NULL,
    "o_direccionSede" varchar(50)  NOT NULL,
    CONSTRAINT "k_sede" PRIMARY KEY ("k_sede")
);

COMMENT ON TABLE "Sede" IS 'Corresponde a la tabla de los datos de la sede.';
COMMENT ON COLUMN "Sede"."k_sede" IS 'identificador de la sede';
COMMENT ON COLUMN "Sede"."n_sede" IS 'nombre de la sede';
COMMENT ON COLUMN "Sede"."o_telefonoSede" IS 'teléfono de contacto de la sede';
COMMENT ON COLUMN "Sede"."o_direccionSede" IS 'dirección en la que se ubica la sede';

-- Table: Tipo_cita
CREATE TABLE "Tipo_cita" (
    "k_tipoCita" int  NOT NULL,
    "o_duracion" int  NOT NULL,
    CONSTRAINT "Tipo_cita_pk" PRIMARY KEY ("k_tipoCita")
);

COMMENT ON TABLE "Tipo_cita" IS 'Almacena  la información de los tipos de cita';
COMMENT ON COLUMN "Tipo_cita"."k_tipoCita" IS 'Identificador del tipo de cita.';
COMMENT ON COLUMN "Tipo_cita"."o_duracion" IS 'Duracion del tipo de cita. ';

-- Table: Usuario
CREATE TABLE "Usuario" (
    "k_documento" int  NOT NULL,
    "i_tipoDocumento" varchar(50)  NOT NULL,
    "n_persona" varchar(50)  NOT NULL,
    "n_apellido" varchar(50)  NOT NULL,
    "f_nacimiento" date  NOT NULL,
    "o_correo" varchar(50)  NOT NULL,
    "o_sexo" varchar(1)  NOT NULL,
    "o_telContacto" int  NOT NULL,
    "o_telCelular" int  NULL,
    CONSTRAINT "Usuario_pk" PRIMARY KEY ("k_documento")
);

COMMENT ON TABLE "Usuario" IS 'Tabla que contiene todos los datos e información de una persona, que puede ser medico o paciente.';
COMMENT ON COLUMN "Usuario"."k_documento" IS 'Numero del documento del paciente';
COMMENT ON COLUMN "Usuario"."i_tipoDocumento" IS 'Tipo de identificacion del documento';
COMMENT ON COLUMN "Usuario"."n_persona" IS 'Nombre del paciente';
COMMENT ON COLUMN "Usuario"."n_apellido" IS 'Apellido del paciente';
COMMENT ON COLUMN "Usuario"."f_nacimiento" IS 'Fecha de nacimiento del paciente';
COMMENT ON COLUMN "Usuario"."o_correo" IS 'Correo electrónico o e-mail del paciente.';
COMMENT ON COLUMN "Usuario"."o_sexo" IS 'Sexo del paciente ("M" "F")';
COMMENT ON COLUMN "Usuario"."o_telContacto" IS 'Telefono de contacto del paciente';
COMMENT ON COLUMN "Usuario"."o_telCelular" IS 'Telefono celular del paciente';

-- foreign keys
-- Reference: Afiliado_Afiliado (table: Afiliado)
ALTER TABLE "Afiliado" ADD CONSTRAINT "Afiliado_Afiliado"
    FOREIGN KEY ("Afiliado_k_documento")
    REFERENCES "Afiliado" ("k_documento")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

COMMENT ON CONSTRAINT "Afiliado_Afiliado" ON "Afiliado" IS 'Relaciona al afiliado con los beneficiaros que pueda tener.';

-- Reference: Agenda_Medico (table: Agenda)
ALTER TABLE "Agenda" ADD CONSTRAINT "Agenda_Medico"
    FOREIGN KEY ("o_medico")
    REFERENCES "Medico" ("k_documento")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Agenda_Tipo_cita (table: Agenda)
ALTER TABLE "Agenda" ADD CONSTRAINT "Agenda_Tipo_cita"
    FOREIGN KEY ("o_tipoCita")
    REFERENCES "Tipo_cita" ("k_tipoCita")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Categoria_Afiliado (table: Afiliado)
ALTER TABLE "Afiliado" ADD CONSTRAINT "Categoria_Afiliado"
    FOREIGN KEY ("o_categoria")
    REFERENCES "Categoria" ("k_categoria")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

COMMENT ON CONSTRAINT "Categoria_Afiliado" ON "Afiliado" IS 'Relaciona la categoria y los afiliados que tienen esa caterogoria';

-- Reference: Cita_Agenda (table: Agenda)
ALTER TABLE "Agenda" ADD CONSTRAINT "Cita_Agenda"
    FOREIGN KEY ("o_cita")
    REFERENCES "Cita" ("k_cita")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Cita_Multa (table: Cita)
ALTER TABLE "Cita" ADD CONSTRAINT "Cita_Multa"
    FOREIGN KEY ("o_multa")
    REFERENCES "Multa" ("k_multa")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

COMMENT ON CONSTRAINT "Cita_Multa" ON "Cita" IS 'Relaciona la cita y las mulas que puede tener.';

-- Reference: Cita_Paciente (table: Cita)
ALTER TABLE "Cita" ADD CONSTRAINT "Cita_Paciente"
    FOREIGN KEY ("o_paciente")
    REFERENCES "Afiliado" ("k_documento")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

COMMENT ON CONSTRAINT "Cita_Paciente" ON "Cita" IS 'Relaciona el afiliado y las citas que solicita';

-- Reference: Consultorio_Medico (table: Medico)
ALTER TABLE "Medico" ADD CONSTRAINT "Consultorio_Medico"
    FOREIGN KEY ("o_consultorio")
    REFERENCES "Consultorio" ("k_consultorio")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Consultorio_Sede (table: Consultorio)
ALTER TABLE "Consultorio" ADD CONSTRAINT "Consultorio_Sede"
    FOREIGN KEY ("o_sede")
    REFERENCES "Sede" ("k_sede")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Medico_Especialidad (table: Medico)
ALTER TABLE "Medico" ADD CONSTRAINT "Medico_Especialidad"
    FOREIGN KEY ("o_especialidad")
    REFERENCES "Especialidad" ("k_especialidad")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Medico_Persona (table: Medico)
ALTER TABLE "Medico" ADD CONSTRAINT "Medico_Persona"
    FOREIGN KEY ("k_documento")
    REFERENCES "Usuario" ("k_documento")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Paciente_Persona (table: Afiliado)
ALTER TABLE "Afiliado" ADD CONSTRAINT "Paciente_Persona"
    FOREIGN KEY ("k_documento")
    REFERENCES "Usuario" ("k_documento")  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

