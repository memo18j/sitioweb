/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.controller.fachada;

import com.sitioweb.controller.interfaz.IControlador;
import com.sitioweb.model.DAO.MySQLDepartamentoDAO;
import com.sitioweb.model.DAO.MySQLDocenteDAO;
import com.sitioweb.model.DAO.MySQLDocumentoDAO;
import com.sitioweb.model.DAO.MySQLExtensionDAO;
import com.sitioweb.model.DAO.MySQLFacultadDAO;
import com.sitioweb.model.DAO.MySQLGraduadoDAO;
import com.sitioweb.model.DAO.MySQLGrupoDAO;
import com.sitioweb.model.DAO.MySQLInformacionDAO;
import com.sitioweb.model.DAO.MySQLInfraestructuraDAO;
import com.sitioweb.model.DAO.MySQLInternacionalizacionDAO;
import com.sitioweb.model.DAO.MySQLInvestigacionDAO;
import com.sitioweb.model.DAO.MySQLLabotorioDAO;
import com.sitioweb.model.DAO.MySQLNovedadDAO;
import com.sitioweb.model.DAO.MySQLPestanaDAO;
import com.sitioweb.model.DAO.MySQLProgramaDAO;
import com.sitioweb.model.DAO.MySQLProyectoInvestDAO;
import com.sitioweb.model.DAO.MySQLSemilleroDAO;
import com.sitioweb.model.DAO.MySQLSesionDAO;
import com.sitioweb.model.DAO.MySQLTipoExtensionDAO;
import com.sitioweb.model.DAO.MySQLTipoInfoDAO;
import com.sitioweb.model.DAO.MySQLTipoInfoGraduadoDAO;
import com.sitioweb.model.DAO.MySQLTipoInfraestructuraDAO;
import com.sitioweb.model.DAO.MySQLTipoInternacionalizacionDAO;
import com.sitioweb.model.DAO.MySQLTipoInvestigacionDAO;
import com.sitioweb.model.DAO.MySQLTipoNovedadDAO;
import com.sitioweb.model.DAO.MySQLTipoPregramaDAO;
import com.sitioweb.model.DAO.MySQLUsuarioDAO;
import com.sitioweb.model.DTO.DepartamentoDTO;
import com.sitioweb.model.DTO.DocenteDTO;
import com.sitioweb.model.DTO.DocumentoDTO;
import com.sitioweb.model.DTO.ExtensionDTO;
import com.sitioweb.model.DTO.FacultadDTO;
import com.sitioweb.model.DTO.GraduadoDTO;
import com.sitioweb.model.DTO.GrupoDTO;
import com.sitioweb.model.DTO.InformacionDTO;
import com.sitioweb.model.DTO.InfraestructuraDTO;
import com.sitioweb.model.DTO.InternacionalizacionDTO;
import com.sitioweb.model.DTO.InvestigacionDTO;
import com.sitioweb.model.DTO.LaboratorioDTO;
import com.sitioweb.model.DTO.NovedadDTO;
import com.sitioweb.model.DTO.PestanaDTO;
import com.sitioweb.model.DTO.ProgramaDTO;
import com.sitioweb.model.DTO.ProyectoInvestDTO;
import com.sitioweb.model.DTO.SemilleroDTO;
import com.sitioweb.model.DTO.TipoExtensionDTO;
import com.sitioweb.model.DTO.TipoInfoDTO;
import com.sitioweb.model.DTO.TipoInfoGraduadoDTO;
import com.sitioweb.model.DTO.TipoInfraestructuraDTO;
import com.sitioweb.model.DTO.TipoInternacionalizacionDTO;
import com.sitioweb.model.DTO.TipoInvestigacionDTO;
import com.sitioweb.model.DTO.TipoNovedadDTO;
import com.sitioweb.model.DTO.TipoProgramaDTO;
import com.sitioweb.model.DTO.UsuarioDTO;
import com.sitioweb.model.interfaz.IDepartamento;
import com.sitioweb.model.interfaz.IDocente;
import com.sitioweb.model.interfaz.IDocumento;
import com.sitioweb.model.interfaz.IExtension;
import com.sitioweb.model.interfaz.IFacultad;
import com.sitioweb.model.interfaz.IGraduado;
import com.sitioweb.model.interfaz.IGrupo;
import com.sitioweb.model.interfaz.IInformacion;
import com.sitioweb.model.interfaz.IInfraestructura;
import com.sitioweb.model.interfaz.IInternacionalizacion;
import com.sitioweb.model.interfaz.IInvestigacion;
import com.sitioweb.model.interfaz.ILaboratorio;
import com.sitioweb.model.interfaz.INovedad;
import com.sitioweb.model.interfaz.IPestana;
import com.sitioweb.model.interfaz.IPrograma;
import com.sitioweb.model.interfaz.IProyectoInvest;
import com.sitioweb.model.interfaz.ISemillero;
import com.sitioweb.model.interfaz.ISesion;
import com.sitioweb.model.interfaz.ITipoExtension;
import com.sitioweb.model.interfaz.ITipoInfo;
import com.sitioweb.model.interfaz.ITipoInfoGraduado;
import com.sitioweb.model.interfaz.ITipoInfraestructura;
import com.sitioweb.model.interfaz.ITipoInternacionalizacion;
import com.sitioweb.model.interfaz.ITipoInvestigacion;
import com.sitioweb.model.interfaz.ITipoNovedad;
import com.sitioweb.model.interfaz.ITipoPrograma;
import com.sitioweb.model.interfaz.IUsuario;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public class Controlador implements IControlador {

    private final ISesion sesion;
    private final IUsuario usuario;
    private final IFacultad facultad;
    private final IDocumento documento;
    private final IInformacion informacion;
    private final IPestana pestana;
    private final ITipoInfo tipo;
    private final IDepartamento dpto;
    private final IDocente docente;
    private final IGrupo grupo;
    private final ILaboratorio lab;
    private final INovedad novedad;
    private final IPrograma programa;
    private final IProyectoInvest proyInvest;
    private final ISemillero semillero;
    private final ITipoNovedad tipoNov;
    private final ITipoPrograma tipoProg;
    private final IInvestigacion investigacion;
    private final IInfraestructura infraestructura;
    private final ITipoInvestigacion tipoInvest;
    private final ITipoInfraestructura tipoInfra;
    private final IExtension extension;
    private final ITipoExtension tipoExt;
    private final IInternacionalizacion inter;
    private final ITipoInternacionalizacion tipoInter;
    private final ITipoInfoGraduado tipoInfoGrad;
    private final IGraduado graduado;

    public Controlador() {
        this.sesion = new MySQLSesionDAO();
        this.usuario = new MySQLUsuarioDAO();
        this.facultad = new MySQLFacultadDAO();
        this.documento = new MySQLDocumentoDAO();
        this.informacion = new MySQLInformacionDAO();
        this.pestana = new MySQLPestanaDAO();
        this.tipo = new MySQLTipoInfoDAO();
        this.dpto = new MySQLDepartamentoDAO();
        this.docente = new MySQLDocenteDAO();
        this.grupo = new MySQLGrupoDAO();
        this.lab = new MySQLLabotorioDAO();
        this.novedad = new MySQLNovedadDAO();
        this.programa = new MySQLProgramaDAO();
        this.proyInvest = new MySQLProyectoInvestDAO();
        this.semillero = new MySQLSemilleroDAO();
        this.tipoNov = new MySQLTipoNovedadDAO();
        this.tipoProg = new MySQLTipoPregramaDAO();
        this.investigacion = new MySQLInvestigacionDAO();
        this.infraestructura = new MySQLInfraestructuraDAO();
        this.tipoInvest = new MySQLTipoInvestigacionDAO();
        this.tipoInfra = new MySQLTipoInfraestructuraDAO();
        this.extension = new MySQLExtensionDAO();
        this.tipoExt = new MySQLTipoExtensionDAO();
        this.tipoInter = new MySQLTipoInternacionalizacionDAO();
        this.inter = new MySQLInternacionalizacionDAO();
        this.tipoInfoGrad = new MySQLTipoInfoGraduadoDAO();
        this.graduado = new MySQLGraduadoDAO();
    }

    @Override
    public void aniadirVisita() throws Exception {
        int cantVisitas = mostrarVisitas() + 1;
        FileWriter fichero = null;
        PrintWriter pw = null;
        try {
            fichero = new FileWriter("D:/SitioWeb2/contador.txt");
            //fichero = new FileWriter("../contador.txt");
            pw = new PrintWriter(fichero);
            pw.println(cantVisitas + "");
        } catch (IOException e) {
            System.err.println(e);
        } finally {
            try {
                // Nuevamente aprovechamos el finally para 
                // asegurarnos que se cierra el fichero.
                if (null != fichero) {
                    fichero.close();
                }
            } catch (IOException e2) {
                System.err.println(e2);
            }
        }
    }
    @Override
    public int mostrarVisitas() throws Exception {
        int n = 0;
        File archivo = null;
        FileReader fr = null;
        BufferedReader br = null;
        try {
            // Apertura del fichero y creacion de BufferedReader para poder
            // hacer una lectura comoda (disponer del metodo readLine()).
            archivo = new File("D:/SitioWeb2/contador.txt");
            //archivo = new File("../contador.txt");
            fr = new FileReader(archivo);
            br = new BufferedReader(fr);
            // Lectura del fichero
            String linea;
            while ((linea = br.readLine()) != null) {
                System.out.println(linea);
                n = Integer.parseInt(linea);
            }
        } catch (IOException e) {
            System.err.println(e);
        } finally {
            // En el finally cerramos el fichero, para asegurarnos
            // que se cierra tanto si todo va bien como si salta 
            // una excepcion.
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (Exception e2) {
                System.err.println(e2);
            }
        }
        return n;
    }

    @Override
    public boolean iniciarSesion(String usuario, String contrasenia) throws Exception {
        return this.sesion.iniciarSesion(usuario, contrasenia);
    }

    @Override
    public boolean registrarUsuario(int codusuario, String contrasena, String nombre,
            String correo, int telefono) throws Exception {
        UsuarioDTO usu = new UsuarioDTO(codusuario, contrasena, nombre, correo, telefono);
        return this.usuario.registrarUsuario(usu);
    }

    @Override
    public ArrayList<UsuarioDTO> mostrarUsuario() throws Exception {
        return this.usuario.mostrarUsuario();
    }

    @Override
    public boolean actualizarDatosUsuario(int codusuario, String contrasena, String nombre,
            String correo, int telefono) throws Exception {
        return this.usuario.actualizarDatosUsuario(codusuario, contrasena, nombre, correo, telefono);
    }

    @Override
    public boolean registrarFacultad(int idFacultad, String nombre) throws Exception {
        FacultadDTO fac = new FacultadDTO(idFacultad, nombre);
        return this.facultad.registrarFacultad(fac);
    }

    @Override
    public ArrayList<FacultadDTO> mostrarFacultad() throws Exception {
        return this.facultad.mostrarFacultad();
    }

    @Override
    public boolean actualizarDatosFacultad(int idFacultad, String nombre) throws Exception {
        return this.facultad.actualizarFacultad(idFacultad, nombre);
    }

    @Override
    public boolean registrarPestana(String nombre) throws Exception {
        PestanaDTO pes = new PestanaDTO(nombre);
        return this.pestana.registrarPestana(pes);
    }

    @Override
    public ArrayList<PestanaDTO> mostrarPestana() throws Exception {
        return this.pestana.mostrarPestana();
    }

    @Override
    public boolean actualizarDatosPestana(int idPestana, String nombre) throws Exception {
        return this.pestana.actualizarPestana(idPestana, nombre);
    }

    @Override
    public boolean registrarTipoInfo(String descripcion, int pestana) throws Exception {
        TipoInfoDTO tip = new TipoInfoDTO(descripcion, pestana);
        return this.tipo.registrarTipoInfo(tip);
    }

    @Override
    public ArrayList<TipoInfoDTO> mostrarTipoInfo() throws Exception {
        System.out.println("pep2");
        return this.tipo.mostrarTipoInfo();
    }

    @Override
    public boolean actualizarDatosTipoInfo(int idinfo, String descripcion, int pestana) throws Exception {
        return this.tipo.actualizarTipoInfo(idinfo, descripcion, pestana);
    }

    @Override
    public boolean registrarDocumento(String nombre, String ruta) throws Exception {
        DocumentoDTO doc = new DocumentoDTO(nombre, ruta);
        return this.documento.registrarDocumento(doc);
    }

    @Override
    public ArrayList<DocumentoDTO> mostrarDocumento() throws Exception {
        return this.documento.mostrarDocumento();
    }

    @Override
    public boolean actualizarDatosDocumento(int idDocumento, String nombre, String ruta) throws Exception {
        return this.documento.actualizarDocumento(idDocumento, nombre, ruta);
    }

    @Override
    public boolean registrarInformacion(String descripcion, String nombre, String link,
            String imagen, int tipoinfo) throws Exception {
        InformacionDTO inf = new InformacionDTO(descripcion, nombre, link, imagen, tipoinfo);
        return this.informacion.registrarInformacion(inf);
    }

    @Override
    public boolean eliminarInformacion(int id, String nombre) throws Exception {
        System.out.println("---" + id + "--" + nombre);
        InformacionDTO dto = new InformacionDTO();
        dto.setIdInformacion(id);
        dto.setNombre(nombre);

        return this.informacion.eliminarInformacion(dto);
    }

    @Override
    public ArrayList<InformacionDTO> mostrarInformacion() throws Exception {
        return this.informacion.mostrarInformacion();
    }

    @Override
    public boolean actualizarDatosInformacion(int idInformacion, String descripcion, String nombre,
            String link, String imagen, int tipoinfo) throws Exception {
        return this.informacion.actualizarInformacion(idInformacion, descripcion, nombre,link, imagen, tipoinfo);
    }

    @Override
    public boolean registrarDepartamento(String nombre, String director, String descripcion,
            String link) throws Exception {
        DepartamentoDTO dep = new DepartamentoDTO(nombre, director, descripcion, link);
        return this.dpto.registrarDepartamento(dep);
    }

    @Override
    public ArrayList<DepartamentoDTO> mostrarDepartamento() throws Exception {
        return this.dpto.mostrarDepartamento();
    }

    @Override
    public boolean eliminarDepartamento(int id, String nombre) throws Exception {
        System.out.println("---" + id + "--" + nombre);
        DepartamentoDTO dto = new DepartamentoDTO();
        dto.setIddpto(id);
        dto.setNombre(nombre);

        return this.dpto.eliminarDepartamento(dto);
    }

    @Override
    public boolean actualizarDepartamento(int iddpto, String nombre, String director,
            String descripcion, String link) throws Exception {
        return this.dpto.actualizarDepartamento(iddpto, nombre, director, descripcion, link);
    }

    @Override
    public boolean registrarDocente(String nombre, String correo, String tipo,
            String linkcvlad, int dpto) throws Exception {
        DocenteDTO doce = new DocenteDTO(nombre, correo, tipo, linkcvlad, dpto);
        return this.docente.registrarDocente(doce);
    }

    @Override
    public ArrayList<DocenteDTO> mostrarDocente() throws Exception {
        return this.docente.mostrarDocente();
    }

    @Override
    public boolean eliminarDocente(int id, String nombre) throws Exception {
        System.out.println("---" + id + "--" + nombre);
        DocenteDTO dto = new DocenteDTO();
        dto.setIdDocente(id);
        dto.setNombre(nombre);

        return this.docente.eliminarDocente(dto);
    }

    @Override
    public boolean actualizarDocente(int idDocente, String nombre, String correo, String tipo,
            String linkcvlad, int dpto) throws Exception {
        return this.docente.actualizarDocente(idDocente, nombre, correo, tipo, linkcvlad, dpto);
    }

    @Override
    public boolean registrarGrupo(String nombre, String director, String correo,
            String lineainvest, String estatus, String link) throws Exception {
        GrupoDTO grup = new GrupoDTO(nombre, director, correo, lineainvest, estatus, link);
        return this.grupo.registrarGrupo(grup);
    }

    @Override
    public ArrayList<GrupoDTO> mostrarGrupo() throws Exception {
        return this.grupo.mostrarGrupo();
    }

    @Override
    public boolean actualizarGrupo(int idGrupo, String nombre, String director, String correo,
            String lineainvest, String estatus, String link) throws Exception {
        return this.grupo.actualizarGrupo(idGrupo, nombre, director, correo, lineainvest, estatus, link);
    }

    @Override
    public boolean registrarLaboratorio(String nombre, String tipo, String descripcion) throws Exception {
        LaboratorioDTO labo = new LaboratorioDTO(nombre, tipo, descripcion);
        return this.lab.registrarLaboratorio(labo);
    }

    @Override
    public ArrayList<LaboratorioDTO> mostrarLaboratorio() throws Exception {
        return this.lab.mostrarLaboratorio();
    }

    @Override
    public boolean actualizarLaboratorio(int idLaboratorio, String nombre, String tipo,
            String descripcion) throws Exception {
        return this.lab.actualizarLaboratorio(idLaboratorio, nombre, tipo, descripcion);
    }

    @Override
    public boolean registrarNovedad(String titulo, String linkimg, String descripcion,
            String fecha, int tiponovedad) throws Exception {
        NovedadDTO nov = new NovedadDTO(titulo, linkimg, descripcion, fecha, tiponovedad);
        return this.novedad.registrarNovedad(nov);
    }

    @Override
    public ArrayList<NovedadDTO> mostrarNovedad() throws Exception {
        return this.novedad.mostrarNovedad();
    }

    @Override
    public ArrayList<NovedadDTO> mostrarNovedadId(int idNovedad) throws Exception {
        return this.novedad.mostrarNovedadId(idNovedad);
    }

    @Override
    public ArrayList<NovedadDTO> mostrarNovedadTipo(int tipo) throws Exception {
        return this.novedad.mostrarNovedadTipo(tipo);
    }
    @Override
    public boolean eliminarNovedad(int id, String nombre) throws Exception {
        System.out.println("---" + id + "--" + nombre);
        NovedadDTO dto = new NovedadDTO();
        dto.setIdNovedad(id);
        dto.setTitulo(nombre);

        return this.novedad.eliminarNovedad(dto);
    }

    @Override
    public boolean actualizarNovedadDTO(int idNovedad, String titulo, String linkimg,
            String descripcion, String fecha, int tiponovedad) throws Exception {
        return this.novedad.actualizarNovedadDTO(idNovedad, titulo, linkimg, descripcion,
                fecha, tiponovedad);
    }

    @Override
    public boolean registrarPrograma(String nombre, int tipo, String director, String correoprograma,
            String ubicacion, String telefono, int codsnies, String modalidad, String horario,
            String imagen, String link) throws Exception {
        ProgramaDTO prog = new ProgramaDTO(nombre, director, correoprograma, ubicacion,
                telefono, modalidad, horario, imagen, link, tipo, codsnies);
        return this.programa.registrarPrograma(prog);
    }

    @Override
    public ArrayList<ProgramaDTO> mostrarPrograma() throws Exception {
        return this.programa.mostrarPrograma();
    }

    @Override
    public ArrayList<ProgramaDTO> mostrarProgramaId(int idPrograma) throws Exception {
        return this.programa.mostrarProgramaId(idPrograma);
    }
    
    @Override
    public ArrayList<ProgramaDTO> mostrarProgramaTipo(int tipo) throws Exception {
        return this.programa.mostrarProgramaTipo(tipo);
    }
    
    @Override
    public boolean eliminarPrograma(int id, String nombre) throws Exception {
        System.out.println("---" + id + "--" + nombre);
        ProgramaDTO dto = new ProgramaDTO();
        dto.setIdPrograma(id);
        dto.setNombre(nombre);

        return this.programa.eliminarPrograma(dto);
    }
    @Override
    public boolean actualizarPrograma(int idPrograma, String nombre, int tipo, String director,
            String correoprograma, String ubicacion, String telefono, int codsnies,
            String modalidad, String horario, String imagen, String link) throws Exception {
        return this.programa.actualizarPrograma(idPrograma, nombre, tipo, director, correoprograma,
                ubicacion, telefono, codsnies, modalidad, horario, imagen, link);
    }

    @Override
    public boolean registrarProyectoInvest(String nombre, String descripcion, int grupo) throws Exception {
        ProyectoInvestDTO proy = new ProyectoInvestDTO(nombre, descripcion, grupo);
        return this.proyInvest.registrarProyectoInvest(proy);
    }

    @Override
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvest() throws Exception {
        return this.proyInvest.mostrarProyectoInvest();
    }

    @Override
    public boolean actualizarProyectoInvest(int idProyecto, String nombre, String descripcion,
            int grupo) throws Exception {
        return this.proyInvest.actualizarProyectoInvest(idProyecto, nombre, descripcion, grupo);
    }

    @Override
    public boolean registrarSemillero(String nombre, String director, String correo,
            String lineainvest, String link) throws Exception {
        SemilleroDTO semi = new SemilleroDTO(nombre, director, correo, lineainvest, link);
        return this.semillero.registrarSemillero(semi);
    }

    @Override
    public ArrayList<SemilleroDTO> mostrarSemillero() throws Exception {
        return this.semillero.mostrarSemillero();
    }

    @Override
    public boolean actualizarSemillero(int idSemillero, String nombre, String director,
            String correo, String lineainvest, String link) throws Exception {
        return this.semillero.actualizarSemillero(idSemillero, nombre, director, correo, lineainvest, link);
    }

    @Override
    public boolean registrarTipoNovedad(String nombre) throws Exception {
        TipoNovedadDTO tipnov = new TipoNovedadDTO(nombre);
        return this.tipoNov.registrarTipoNovedad(tipnov);
    }

    @Override
    public ArrayList<TipoNovedadDTO> mostrarTipoNovedad() throws Exception {
        return this.tipoNov.mostrarTipoNovedad();
    }

    @Override
    public boolean actualizarTipoNovedad(int idTipoNov, String nombre) throws Exception {
        return this.tipoNov.actualizarTipoNovedad(idTipoNov, nombre);
    }

    @Override
    public boolean registrarTipoPrograma(String descripcion) throws Exception {
        TipoProgramaDTO tipprog = new TipoProgramaDTO(descripcion);
        return this.tipoProg.registrarTipoPrograma(tipprog);
    }

    @Override
    public ArrayList<TipoProgramaDTO> mostrarTipoPrograma() throws Exception {
        return this.tipoProg.mostrarTipoPrograma();
    }

    @Override
    public boolean actualizarTipoPrograma(int idTipoProg, String descripcion) throws Exception {
        return this.tipoProg.actualizarTipoPrograma(idTipoProg, descripcion);
    }

    @Override
    public ArrayList<InformacionDTO> mostrarInformacionId(int idInformacion) throws Exception {
        return this.informacion.mostrarInformacionId(idInformacion);
    }

    @Override
    public ArrayList<DepartamentoDTO> mostrarDepartamentoId(int idDepartamento) throws Exception {
        return this.dpto.mostrarDepartamentoId(idDepartamento);
    }

    @Override
    public ArrayList<DocenteDTO> mostrarDocenteId(int idDocente) throws Exception {
        return this.docente.mostrarDocenteId(idDocente);
    }

    @Override
    public ArrayList<DocenteDTO> mostrarDocenteDpto(int dpto) throws Exception {
        return this.docente.mostrarDocenteDpto(dpto);
    }

    @Override
    public ArrayList<GrupoDTO> mostrarGrupoId(int idGrupo) throws Exception {
        return this.grupo.mostrarGrupoId(idGrupo);
    }

    @Override
    public ArrayList<LaboratorioDTO> mostrarLaboratorioId(int idLaboratorio) throws Exception {
        return this.lab.mostrarLaboratorioId(idLaboratorio);
    }

    @Override
    public ArrayList<LaboratorioDTO> mostrarLaboratorioTipo(String tipo) throws Exception {
        return this.lab.mostrarLaboratorioTipo(tipo);
    }

    @Override
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvestId(int idProyecto) throws Exception {
        return this.proyInvest.mostrarProyectoInvestId(idProyecto);
    }

    @Override
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvestGrupo(int grupo) throws Exception {
        return this.proyInvest.mostrarProyectoInvestGrupo(grupo);
    }

    @Override
    public ArrayList<SemilleroDTO> mostrarSemilleroId(int idSemillero) throws Exception {
        return this.semillero.mostrarSemilleroId(idSemillero);
    }

    @Override
    public boolean registrarTipoInvestigacion(String nombre) throws Exception {
        TipoInvestigacionDTO tipinvest = new TipoInvestigacionDTO(nombre);
        return this.tipoInvest.registrarTipoInvestigacion(tipinvest);
    }

    @Override
    public ArrayList<TipoInvestigacionDTO> mostrarTipoInvestigacion() throws Exception {
        return this.tipoInvest.mostrarTipoInvestigacion();
    }

    @Override
    public boolean actualizarTipoInvestigacion(int idTipoInvest, String nombre) throws Exception {
        return this.tipoInvest.actualizarTipoInvestigacion(idTipoInvest, nombre);
    }

    @Override
    public boolean registrarTipoInfraestructura(String nombre) throws Exception {
        TipoInfraestructuraDTO tipinfra = new TipoInfraestructuraDTO(nombre);
        return this.tipoInfra.registrarTipoInfraestructura(tipinfra);
    }

    @Override
    public ArrayList<TipoInfraestructuraDTO> mostrarTipoInfraestructura() throws Exception {
        return this.tipoInfra.mostrarTipoInfraestructura();
    }

    @Override
    public boolean actualizarTipoInfraestructura(int idTipoInfra, String nombre) throws Exception {
        return this.tipoInfra.actualizarTipoInfraestructura(idTipoInfra, nombre);
    }

    @Override
    public boolean registrarInvestigacion(String nombre, String director, String correo,
            String lineainvest, String estatus, String link, int tipo) throws Exception {
        InvestigacionDTO invest = new InvestigacionDTO(nombre, director, correo, lineainvest,
                estatus, link, tipo);
        return this.investigacion.registrarInvestigacion(invest);
    }

    @Override
    public ArrayList<InvestigacionDTO> mostrarInvestigacion() throws Exception {
        return this.investigacion.mostrarInvestigacion();
    }

    @Override
    public ArrayList<InvestigacionDTO> mostrarInvestigacionId(int idInvestigacion) throws Exception {
        return this.investigacion.mostrarInvestigacionId(idInvestigacion);
    }

    @Override
    public ArrayList<InvestigacionDTO> mostrarInvestigacionTipo(int tipo) throws Exception {
        return this.investigacion.mostrarInvestigacionTipo(tipo);
    }
    @Override
    public boolean eliminarInvestigacion(int id, String nombre) throws Exception {
        System.out.println("---" + id + "--" + nombre);
        InvestigacionDTO dto = new InvestigacionDTO();
        dto.setIdInvestigacion(id);
        dto.setNombre(nombre);

        return this.investigacion.eliminarInvestigacion(dto);
    }
    @Override
    public boolean actualizarInvestigacion(int idInvestigacion, String nombre, String director,
            String correo, String lineainvest, String estatus,
            String link, int tipo) throws Exception {
        return this.investigacion.actualizarInvestigacion(idInvestigacion, nombre, director,
                correo, lineainvest, estatus, link, tipo);
    }

    @Override
    public boolean registrarInfraestructura(String nombre, String ubicacion, String descripcion,
            int tipo, String imagen) throws Exception {
        InfraestructuraDTO infra = new InfraestructuraDTO(nombre, ubicacion, descripcion, tipo, imagen);
        return this.infraestructura.registrarInfraestructura(infra);
    }
    
    @Override
    public boolean eliminarInfraestructura(int id, String nombre) throws Exception {
        System.out.println("---" + id + "--" + nombre);
        InfraestructuraDTO dto = new InfraestructuraDTO();
        dto.setIdInfra(id);
        dto.setNombre(nombre);

        return this.infraestructura.eliminarInfraestructura(dto);
    }
    @Override
    public ArrayList<InfraestructuraDTO> mostrarInfraestructura() throws Exception {
        return this.infraestructura.mostrarInfraestructura();
    }

    @Override
    public ArrayList<InfraestructuraDTO> mostrarInfraestructuraId(int idInfra) throws Exception {
        return this.infraestructura.mostrarInfraestructuraId(idInfra);
    }

    @Override
    public ArrayList<InfraestructuraDTO> mostrarInfraestructuraTipo(int tipo) throws Exception {
        return this.infraestructura.mostrarInfraestructuraTipo(tipo);
    }

    @Override
    public boolean actualizarInfraestructura(int idInfra, String nombre, String ubicacion,
            String descripcion, int tipo, String imagen) throws Exception {
        return this.infraestructura.actualizarInfraestructura(idInfra, nombre, ubicacion,
                descripcion, tipo, imagen);
    }

    @Override
    public boolean registrarTipoExt(String descripcion) throws Exception {
        TipoExtensionDTO tipext = new TipoExtensionDTO(descripcion);
        return this.tipoExt.registrarTipoExt(tipext);
    }

    @Override
    public ArrayList<TipoExtensionDTO> mostrarTipoExt() throws Exception {
        return this.tipoExt.mostrarTipoExt();
    }

    @Override
    public boolean actualizarDatosTipoExt(int idtipo, String descripcion) throws Exception {
        return this.tipoExt.actualizarTipoExt(idtipo, descripcion);
    }

    @Override
    public boolean registrarExtension(int tipoext, String descripcion, String nombre, String link, 
            String documento) throws Exception {
        ExtensionDTO ext = new ExtensionDTO(tipoext, descripcion, nombre, link, documento);
        return this.extension.registrarExtension(ext);
    }

    @Override
    public boolean eliminarExtension(int idExtension, String nombre) throws Exception {
        System.out.println("---" + idExtension + "--" + nombre);
        ExtensionDTO dto = new ExtensionDTO();
        dto.setIdExtension(idExtension);
        dto.setNombre(nombre);

        return this.extension.eliminarExtension(dto);
    }

    @Override
    public ArrayList<ExtensionDTO> mostrarExtension() throws Exception {
        return this.extension.mostrarExtension();
    }

    @Override
    public ArrayList<ExtensionDTO> mostrarExtensionId(int idExtension) throws Exception {
        return this.extension.mostrarExtensionId(idExtension);
    }
    
    @Override
    public ArrayList<ExtensionDTO> mostrarExtensionTipo(int tipo) throws Exception {
        return this.extension.mostrarExtensionTipo(tipo);
    }

    @Override
    public boolean actualizarDatosExtension(int idExtension, int tipoext, String descripcion, 
            String nombre, String link, String documento) throws Exception {
        return this.extension.actualizarExtension(idExtension, tipoext, descripcion, nombre, link, documento);
    }

    @Override
    public boolean registrarTipoInter(String descripcion) throws Exception {
        TipoInternacionalizacionDTO inter = new TipoInternacionalizacionDTO(descripcion);
        return this.tipoInter.registrarTipoInternac(inter);
    }

    @Override
    public ArrayList<TipoInternacionalizacionDTO> mostrarTipoInter() throws Exception {
        return this.tipoInter.mostrarTipoInternac();
    }

    @Override
    public boolean actualizarDatosTipoInter(int idTipoInternac, String descripcion) throws Exception {
        return this.tipoInter.actualizarTipoInternac(idTipoInternac, descripcion);
    }

    @Override
    public boolean registrarInter(int tipointer, String descripcion, String nombre, 
            String link, String imagen) throws Exception {
        InternacionalizacionDTO internac = new InternacionalizacionDTO(tipointer, descripcion, 
                nombre, link, imagen);
        return this.inter.registrarInternacionalizacion(internac);
    }

    @Override
    public ArrayList<InternacionalizacionDTO> mostrarInter() throws Exception {
        return this.inter.mostrarInternacionalizacion();
    }

    @Override
    public ArrayList<InternacionalizacionDTO> mostrarInterId(int idInternac) throws Exception {
        return this.inter.mostrarInternacionalizacionId(idInternac);
    }
    
    @Override
    public ArrayList<InternacionalizacionDTO> mostrarInternacionalizacionTipo(int tipo) throws Exception {
        return this.inter.mostrarInternacionalizacionTipo(tipo);
    }
    @Override
    public boolean eliminarInter(int idInternac, String nombre) throws Exception {
        System.out.println("---" + idInternac + "--" + nombre);
        InternacionalizacionDTO dto = new InternacionalizacionDTO();
        dto.setIdInternac(idInternac);
        dto.setNombre(nombre);

        return this.inter.eliminarInternacionalizacion(dto);
    }

    @Override
    public boolean actualizarInter(int idInternac, int tipointer, String descripcion, 
            String nombre, String link, String imagen) throws Exception {
        return this.inter.actualizarInternacionalizacion(idInternac, tipointer, descripcion, 
                nombre, link, imagen);
    }

    @Override
    public boolean registrarTipoInfoGrad(String descripcion) throws Exception {
        TipoInfoGraduadoDTO dto = new TipoInfoGraduadoDTO(descripcion);
        return this.tipoInfoGrad.registrarTipoInfoGraduado(dto);
    }

    @Override
    public ArrayList<TipoInfoGraduadoDTO> mostrarTipoInfoGrad() throws Exception {
        return this.tipoInfoGrad.mostrarTipoInfoGraduado();
    }

    @Override
    public boolean actualizarDatosTipoInfoGrad(int idtipoinfo, String descripcion) throws Exception {
        return this.tipoInfoGrad.actualizarTipoInfoGraduado(idtipoinfo, descripcion);
    }

    @Override
    public boolean registrarGraduado(int tipoinfog, String descripcion, String nombre, String link, 
            String documento) throws Exception {
        GraduadoDTO dto = new GraduadoDTO(tipoinfog, descripcion, nombre, link, documento);
        return this.graduado.registrarGraduado(dto);
    }

    @Override
    public boolean eliminarGraduado(int idGraduado, String nombre) throws Exception {
        System.out.println("---" + idGraduado + "--" + nombre);
        GraduadoDTO dto = new GraduadoDTO();
        dto.setIdGraduado(idGraduado);
        dto.setNombre(nombre);

        return this.graduado.eliminarGraduado(dto);
    }

    @Override
    public ArrayList<GraduadoDTO> mostrarGraduado() throws Exception {
        return this.graduado.mostrarGraduado();
    }

    @Override
    public ArrayList<GraduadoDTO> mostrarGraduadoId(int idGraduado) throws Exception {
        return this.graduado.mostrarGraduadoId(idGraduado);
    }

    @Override
    public ArrayList<GraduadoDTO> mostrarGraduadoTipo(int tipo) throws Exception {
        return this.graduado.mostrarGraduadoTipo(tipo);
    }

    @Override
    public boolean actualizarDatosGraduado(int idGraduado, int tipoinfog, String descripcion, 
            String nombre, String link, String documento) throws Exception {
        return this.graduado.actualizarGraduado(idGraduado, tipoinfog, descripcion, nombre, link, documento);
    }
}
